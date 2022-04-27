load("@bazel_gazelle//:def.bzl", "gazelle")

# gazelle:prefix github.com/arya-oss/monorepo
gazelle(name = "gazelle")

filegroup(
    name = "git",
    srcs = glob(
        [".git/**"],
    ),
    tags = ["manual"],
)
