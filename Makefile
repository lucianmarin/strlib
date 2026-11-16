STRICTA_REPO ?= https://github.com/lucianmarin/stricta.git
STRICTA_DIR  ?= .stricta/pkgs/lucianmarin/stricta
STRICTA      ?= $(STRICTA_DIR)/stricta

.PHONY: test clean distclean

$(STRICTA):
	@if [ ! -d "$(STRICTA_DIR)/.git" ]; then \
		mkdir -p .stricta/pkgs; \
		git clone --depth 1 "$(STRICTA_REPO)" "$(STRICTA_DIR)"; \
	fi
	$(MAKE) -C "$(STRICTA_DIR)" all

test: $(STRICTA)
	@set -e; \
	for f in tests/test_*.str; do \
		name=$$(basename "$$f" .str); \
		$(STRICTA) -I . "$$f" -o "/tmp/strlib_$$name"; \
		"/tmp/strlib_$$name"; \
		rm -f "/tmp/strlib_$$name"; \
	done; \
	echo "ALL STRLIB TESTS PASSED"

clean:
	rm -f *.ll *.o *.out

distclean: clean
	rm -rf .stricta
