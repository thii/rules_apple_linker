"""
Register default linker downloads
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_apple_linker_deps():
    http_archive(
        name = "rules_apple_linker_zld",
        build_file_content = 'filegroup(name = "zld_bin", srcs = ["zld"], visibility = ["//visibility:public"])',
        sha256 = "b1897fbe2a2e27241d993d1ae55b5622efd9725139e8b9486b5d6e86cc291415",
        url = "https://github.com/michaeleisel/zld/releases/download/1.3.7/zld.zip",
    )

    http_archive(
        name = "rules_apple_linker_lld",
        build_file_content = 'filegroup(name = "lld_bin", srcs = ["ld64.lld"], visibility = ["//visibility:public"])',
        sha256 = "28566b943082349269b6460a5c23a305a73460bac54f5cd21eb490ff7d84fed7",
        url = "https://github.com/keith/ld64.lld/releases/download/10-14-22/ld64.tar.xz",
    )
