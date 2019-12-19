load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def brotli_repositories():
  """Download and build the Brotli executable."""
  http_archive(
    name = "brotli",
    urls = ["https://github.com/google/brotli/archive/c435f066751ef83aa4194445085a70ad9d193704.zip"],
    strip_prefix = "brotli-c435f066751ef83aa4194445085a70ad9d193704",
    sha256 = "5ede108ba882f9a4f8b4d20b1ed65dede8f31d3c7bddd2da84ecf8f60583244d",
  )
