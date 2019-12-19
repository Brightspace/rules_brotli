load("@io_bazel_stardoc//stardoc:stardoc.bzl", "stardoc")
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

bzl_library(
    name = "bazel_dependencies",
    srcs = [
        "@bazel_tools//tools:bzl_srcs",
    ],
)

bzl_library(
    name = "rules_brotli",
    srcs = [
        "//brotli/private:bzl_srcs",
    ],
)

stardoc(
    name = "api",
    out = "APIReference.md",
    input = "//brotli:defs.bzl",
    tags = ["fix-windows"],
    deps = [
        ":rules_brotli",
        ":bazel_dependencies",
    ],
)
