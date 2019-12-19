load(":actions.bzl", "brotli_compress_file")

def _brotli_compressed_files_impl(ctx):
  outputs = [brotli_compress_file(
    ctx.actions,
    executable = ctx.executable.brotli,
    input = input,
    compression_level = ctx.attr.compression_level,
  ) for input in ctx.files.srcs]

  return [DefaultInfo(files = depset(outputs))]

brotli_compressed_files = rule(
  _brotli_compressed_files_impl,
  doc = "Compress a set of files with Brotli",
  attrs = {
    "srcs": attr.label_list(
      doc = "Files to compress",
      allow_files = True,
    ),
    "compression_level": attr.int(
      doc = "A number between 0 and 11 indicating how much effort to put into compressing",
      default = 11,
      values = [0,1,2,3,4,5,6,7,8,9,10,11],
    ),
    "brotli": attr.label(
      doc = "The Brotli executable",
      executable = True,
      cfg = "host",
      default = Label("@brotli//:brotli"),
    ),
  },
)
  
