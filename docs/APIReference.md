<!-- Generated with Stardoc: http://skydoc.bazel.build -->

<a name="#brotli_compressed_files"></a>

## brotli_compressed_files

<pre>
brotli_compressed_files(<a href="#brotli_compressed_files-name">name</a>, <a href="#brotli_compressed_files-brotli">brotli</a>, <a href="#brotli_compressed_files-compression_level">compression_level</a>, <a href="#brotli_compressed_files-srcs">srcs</a>)
</pre>

Compress a set of files with Brotli

**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :-------------: | :-------------: | :-------------: | :-------------: | :-------------: |
| name |  A unique name for this target.   | <a href="https://bazel.build/docs/build-ref.html#name">Name</a> | required |  |
| brotli |  The Brotli executable   | <a href="https://bazel.build/docs/build-ref.html#labels">Label</a> | optional | @brotli//:brotli |
| compression_level |  A number between 0 and 11 indicating how much effort to put into compressing   | Integer | optional | 11 |
| srcs |  Files to compress   | <a href="https://bazel.build/docs/build-ref.html#labels">List of labels</a> | optional | [] |


<a name="#brotli_compress_file"></a>

## brotli_compress_file

<pre>
brotli_compress_file(<a href="#brotli_compress_file-actions">actions</a>, <a href="#brotli_compress_file-executable">executable</a>, <a href="#brotli_compress_file-input">input</a>, <a href="#brotli_compress_file-output_name">output_name</a>, <a href="#brotli_compress_file-compression_level">compression_level</a>)
</pre>

Emits an Action that compresses a single file with Brotli

This function invokes ctx.actions.run with Brotli on a single file. It is
intended to be used inside the implementation of rules.


**PARAMETERS**


| Name  | Description | Default Value |
| :-------------: | :-------------: | :-------------: |
| actions |  the actions module, usually via ctx.actions inside a rule impl.   |  none |
| executable |  the brotli exe.   |  none |
| input |  <p align="center"> - </p>   |  none |
| output_name |  the filename for the output.<br><br>  If not set, defaults to the input filename with a ".br" extension suffix.   |  <code>None</code> |
| compression_level |  a number between 0 and 11 indicating how hard to try.<br><br>  If not set, the brotli exe will choose a default (typically 11).   |  <code>None</code> |


<a name="#brotli_repositories"></a>

## brotli_repositories

<pre>
brotli_repositories()
</pre>

Download and build the Brotli executable.

**PARAMETERS**



