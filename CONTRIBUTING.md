# Contributing Guidelines
As per the `README`, any lang is allowed, so long as it isn't a duplicate.

## Alternative Implementations
Add a suffix that identifies your implementation from the rest. Preferably delimited by "-". Examples:
```
Sisyphus no-std.rs
Sisyphus-colorized.sh
```

### Environment-Specific
If your impl depends on a _specific env_, **include that info** in the extension. Examples:
```
Sisyphus.bun.js # for "The Buntime"
Sisyphus.c.py # specific to CPython
```

If your impl is cross-platform, **don't add env info**.

## Formatting
- Prefer `"` for strings, as most langs use `'` for chars (I'll have to rewrite my JS and Py to comply with this rule 😭)
- Use the most-idiomatic formatter for the lang in question. Such as: `rustfmt for Rust, `gofmt` for Go, ESLint or Prettier for JS, etc...

## Linting
**NO.**

I want each lang to show its quirks, for the sake of diversity!
