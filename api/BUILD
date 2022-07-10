load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")
load("@io_bazel_rules_docker//go:image.bzl", "go_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")

go_image(
    name = "go_image",
    base = "@go_alpine_amd64//image",
    embed = [":lib"],
    goarch = "amd64",
    goos = "linux",
    pure = "on",
)

container_image(
    name = "image",
    base = ":go_image",
)

go_library(
    name = "lib",
    srcs = ["main.go"],
    importpath = "github.com/arya-oss/monorepo/api",
    visibility = ["//visibility:public"],
    deps = ["@com_github_gorilla_mux//:go_default_library"],
)

go_binary(
    name = "api",
    embed = [":lib"],
    visibility = ["//visibility:public"],
)
