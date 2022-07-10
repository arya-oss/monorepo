load("@rules_java//java:defs.bzl", "java_binary", "java_library")
load("//:skylib/junit.bzl", "junit_tests")
load("@io_bazel_rules_docker//java:image.bzl", "java_image")
load("@io_bazel_rules_docker//container:container.bzl", "container_image", "container_layer")

DEPS = [
    "@maven//:ch_qos_logback_logback_classic",
    "@maven//:org_hibernate_orm_hibernate_core",
    "@maven//:org_postgresql_postgresql",
    "@maven//:org_slf4j_slf4j_api",
    "@maven//:org_springframework_spring_aop",
    "@maven//:org_springframework_spring_beans",
    "@maven//:org_springframework_spring_context",
    "@maven//:org_springframework_spring_core",
    "@maven//:org_springframework_spring_tx",
    "@maven//:org_springframework_spring_web",
    "@maven//:org_springframework_spring_webmvc",
]

java_image(
    name = "java_image",
    base = "@java_slim_11//image",
    main_class = "me.rajarya.learning.service.App",
    runtime_deps = [
        ":library",
    ] + DEPS,
)

container_layer(
    name = "java_symlink",
    symlinks = {
        "/usr/bin/java": "/usr/local/openjdk-11/bin/java",
    },
)

container_image(
    name = "image",
    base = ":java_image",
    layers = [":java_symlink"],
)

java_library(
    name = "library",
    srcs = glob([
        "src/main/java/**/*.java",
    ]),
    resources = ["src/main/resources/logback.xml"],
    visibility = ["//visibility:public"],
    deps = [
        "//core",
    ] + DEPS,
)

java_binary(
    name = "service",
    main_class = "me.rajarya.learning.service.App",
    visibility = ["//visibility:public"],
    runtime_deps = [
        ":library",
    ] + DEPS,
)

java_library(
    name = "test_jar",
    srcs = glob([
        "src/test/java/**/*.java",
    ]),
    data = glob([
        "src/test/resources/**",
    ]),
    resources = glob([
        "src/test/resources/**",
    ]),
    visibility = ["//visibility:public"],
    runtime_deps = [
        "@maven//:junit_junit",
    ],
)

junit_tests(
    name = "java_tests",
    srcs = glob([
        "src/main/java/**/*Test.java",
    ]),
    runtime_deps = [
        ":test_jar",
    ],
)
