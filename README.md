# rules_brotli

A [Bazel](https://bazel.build) rule and function for compressing files with [Brotli](https://github.com/google/brotli).

## Setup

To use this library, add the following to your `WORKSPACE` file:

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "d2l_rules_brotli",
    sha256 = "bef45321ba8030e11c4e9935591c5a656d5da3a6147ab8558c31af8f764e3a92",
    strip_prefix = "rules_brotli-56bcb605599c1b5ef23bc68aef7b0985bfda7c76",
    urls = [
        "https://github.com/brightspace/rules_brotli/archive/56bcb605599c1b5ef23bc68aef7b0985bfda7c76.tar.gz",
    ],
)

load("@d2l_rules_brotli", "brotli_repositories")

brotli_repositories()
```

## Overview

The rule [`brotli_compressed_files`](docs/APIReference.md#brotli_compressed_files) can be used to compress a set of files.
See [`examples/BUILD`](examples/BUILD) for an example of using it.

If you want to use Brotli inside your own rules, the [`brotli_compress_file`](docs/APIReference.md#brotli_compress_file) function can be used inside your rule implementation to create that action.
See the [implementation of the `brotli_compressed_files` rule](brotli/private/rules.bzl) for an example of using it.

See the [API Reference](docs/APIReference.md) for the full details.
