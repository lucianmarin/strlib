# strlib

Standard library for the **Stricta** programming language, written in Stricta using `@extern` runtime bindings.

## Modules
- `sys.str` — `argv`, `platform`, `version`, `exit`
- `os.str` — `exec`, `system`, `exists`, `isdir`, `mkdir_p`, `listdir`, `getenv`, `getcwd`, `remove`, `symlink`, `path_join`, `basename`, `dirname`
- `time.str` — `time`, `monotonic`, `perf_counter`, `sleep`, `time_ns`
- `date.str` — `Date`, `today`, `from_iso`, `is_leap_year`, `days_in_month`
- `datetime.str` — `DateTime`, `TimeDelta`, `now`, `utcnow`, `from_timestamp`
- `lmon.str` — `loads`, `dumps`, `LmonValue` (LMON parser & canonical serializer)
- `json.str` — `loads`, `dumps`, `json_object`, `json_array`, etc. (RFC 8259 JSON parser & serializer sharing `LmonValue`)
- `http.str` — `get`, `post`, `post_json`, `put`, `patch`, `delete`, `head`, `request`, async `aget`/`apost`/`aput`/`adelete`/`arequest`, `Response` (`.json()`, `.lmon()`, `.raise_for_status()`), `Session`, `urlencode`
- `math.str` — `PI`, `E`, `TAU`, `INF`, `NAN`, trig/hyperbolic/log/exp/power functions (`libm`), `gcd`, `lcm`, `factorial`, `isclose`, `clamp`
- `re.str` — `compile`, `search`, `match`, `fullmatch`, `findall`, `finditer`, `sub`, `split`, `escape`, `Pattern`, `Match`, `IGNORECASE`, `MULTILINE`
- `path.str` — `Path` (`join`, `parent`, `name`, `stem`, `suffix`, `exists`, `is_dir`, `is_file`, `mkdir`, `read_text`, `write_text`, `iterdir`, `remove`), `cwd`
- `hashlib.str` — pure-Stricta FIPS 180-4 `sha256` and `sha256_bytes`

## Usage with `fetch`
```bash
fetch add lucianmarin/strlib
```
```python
from strlib import os, sys, datetime
```

## Test
```bash
make test
```
