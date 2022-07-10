load("@rules_python//python:defs.bzl", "py_binary", "py_library")
load("@pip_deps//:requirements.bzl", "requirement")
load("@io_bazel_rules_docker//python3:image.bzl", "py3_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_image", "container_layer")

py3_image(
    name = "py_image",
    srcs = glob([
        "src/**/*.py",
    ]),
    base = "@python_base//image",
    main = "main.py",
    visibility = ["//visibility:public"],
    deps = [
        requirement("fastapi"),
        requirement("pydantic"),
        requirement("loguru"),
        requirement("starlette"),
        requirement("uvicorn"),
    ],
)

container_layer(
    name = "python_symlink",
    symlinks = {
        "/usr/bin/python": "/usr/local/bin/python",
        "/usr/bin/python3": "/usr/local/bin/python",
    },
)

container_image(
    name = "image",
    base = ":py_image",
    layers = [":python_symlink"],
)

py_library(
    name = "lib",
    srcs = glob([
        "src/**/*.py",
    ]),
    deps = [
        requirement("fastapi"),
        requirement("pydantic"),
        requirement("loguru"),
        requirement("starlette"),
        requirement("uvicorn"),
    ],
)

py_binary(
    name = "run",
    srcs = glob([
        "src/**/*.py",
    ]),
    main = "main.py",
    deps = [
        ":lib",
    ],
)
