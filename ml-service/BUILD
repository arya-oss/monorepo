load("@rules_python//python:defs.bzl", "py_binary", "py_library")
load("@pip_deps//:requirements.bzl", "requirement")


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
    main = "main.py",
    srcs = glob([
        "src/**/*.py",
    ]),
    deps = [
        ":lib",
    ],
)