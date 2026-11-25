# strlib TODO

Planned improvements, strictness fixes, and new standard library modules for `../strlib`.

## Strictness & Fixes (Existing Modules)

- [x] `path.str` — honor `parents=False` in `Path.mkdir(parents=True)` using single-level `_os_mkdir` instead of always calling `os.mkdir_p`
- [x] `date.str` — validate `month` (`1..12`) and `day` (`1..days_in_month`) in `Date.__init__`, and check `len(parts) == 3` in `from_iso()`
- [x] `datetime.str` — validate `hour` (`0..23`), `minute` (`0..59`), and `second` (`0..59`) in `DateTime.__init__`
- [x] `math.str` — guard `factorial(n)` against `i64` overflow (`n > 20`)
- [x] `lmon.str` — add `DOM.get_float(key, default=0.0)` for parity with `get_str` / `get_int` / `get_bool`

## New Modules

- [ ] `argparse.str` — CLI flag and subcommand parser (`ArgumentParser`) to replace manual `sys.argv` loops
- [ ] `test.str` — minimal unit test runner and assertion helpers (`assert_eq`, `assert_raises`, test discovery)
- [ ] `base64.str` — RFC 4648 Base64 / URL-safe Base64 encoding and decoding (`b64encode`, `b64decode`)
- [ ] `hmac.str` — HMAC-SHA256 authentication built on `hashlib.str`
- [ ] `random.str` — PRNG and OS entropy helpers (`urandom`, `random`, `randint`, `choice`, `shuffle`)
- [ ] `csv.str` — RFC 4180 CSV parser and writer
- [ ] `sqlite.str` — SQLite3 bindings via `@extern` (`connect`, `execute`, `fetchall`)

## Additional Enhancements

- [ ] `http.str` — async `Session` methods (`aget`, `apost`, `aput`, `adelete`, `arequest`) and `gather` concurrency helpers
- [ ] `os.str` — `os.environ` snapshot, `os.rmdir`, `os.rename`, and `os.stat` / file size helpers
- [ ] `hashlib.str` — streaming `Sha256` hasher class (`update`, `hexdigest`) and SHA-512 / MD5
