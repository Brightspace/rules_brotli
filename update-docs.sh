#!/bin/bash

set -euo pipefail

bazel build //docs/...
cp bazel-bin/docs/*.md docs/
chmod a-x docs/*.md
chmod u+w docs/*.md
