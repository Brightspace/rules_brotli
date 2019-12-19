load(
  "//brotli/private:repositories.bzl",
  _brotli_repositories = "brotli_repositories",
)

load(
  "//brotli/private:rules.bzl",
  _brotli_compressed_files = "brotli_compressed_files",
)

load(
  "//brotli/private:actions.bzl",
  _brotli_compress_file = "brotli_compress_file",
)

brotli_repositories = _brotli_repositories
brotli_compress_file = _brotli_compress_file
brotli_compressed_files = _brotli_compressed_files
