# Contributing Guidelines
As per the `README`, any lang is allowed, as long as it isn't a duplicate. You can even *deviate from my original algorithm,* as long as the _essence of Sisyphus_ is preserved.

## Alternative Implementations
Add a suffix that identifies your implementation from the rest. Preferably delimited by "-". Examples:
```
Sisyphus no-std.rs
Sisyphus-colorized.sh
Sisyphus-quine.pl
```

### Environment-Specific
If your impl depends on a _specific env_, **include that info** in the extension. Examples:
```
Sisyphus.bun.js # for "The Buntime"
Sisyphus.c.py # specific to CPython
```

If your impl is cross-platform, **don't add env info**.

## Formatting
- Prefer `"` for strings, as most langs interpret `'` in conflicting ways (in speaking/writing it's an apostrophe; in C and Rust it's a `char`).
- Use the most-idiomatic formatter for the corresponding lang. Such as: `rustfmt` for Rust, ESLint or Prettier for JS, `gofmt` for Go, etc...
- Update `.editorconfig` to avoid conflicts with chosen lang. I've already did this with YAML, despite not being present in the repo (yet).

> Why is there `.editorconfig` but not `.gitattributes`?

Because I want local and remote repos to have the same `eol`

## Linting
**NO.** I want each lang to show its quirks, for the sake of diversity!

However, I recommend using [SC](https://github.com/koalaman/shellcheck) to verify POSIX-compliance of `sh` scripts. If there's a better way to statically-check POSIX scripts, please let me know
