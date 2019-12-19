def brotli_compress_file(actions, executable, input, output_name = None, compression_level = None):
  """Emits an Action that compresses a single file with Brotli

  This function invokes ctx.actions.run with Brotli on a single file. It is
  intended to be used inside the implementation of rules.

  Args:
    actions: the actions module, usually via ctx.actions inside a rule impl.
    executable: the brotli exe.
    output_name: the filename for the output.

      If not set, defaults to the input filename with a ".br" extension suffix.
    compression_level: a number between 0 and 11 indicating how hard to try.

      If not set, the brotli exe will choose a default (typically 11).
  """
  args = actions.args()

  if compression_level != None:
    args.add("-q", compression_level)

  output = actions.declare_file(
    output_name or input.basename + ".br",
    sibling = input
  )

  args.add("-o", output)

  args.add(input)

  actions.run(
    inputs = [input],
    outputs = [output],
    executable = executable,
    arguments = [args],
    mnemonic = "BrotliCompress",
    progress_message = "Applying Brotli compression to " + input.basename,
  )

  return output
