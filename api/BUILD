load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")

container_image(
    name = "image",
    base = "@go_alpine_amd64//image",
    entrypoint = ["/api"],
    files = [
        ":api",
    ],
)

go_library(
    name = "go_default_library",
    srcs = ["main.go"],
    importpath = "github.com/arya-oss/monorepo/api",
    visibility = ["//visibility:private"],
    deps = ["@com_github_gorilla_mux//:go_default_library"],
)

go_binary(
    name = "api",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
