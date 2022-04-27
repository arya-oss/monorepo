load("@rules_java//java:defs.bzl", "java_binary", "java_library")
load("//:skylib/junit.bzl", "junit_tests")
load("@io_bazel_rules_docker//container:container.bzl", "container_image")
load("@io_bazel_rules_docker//java:image.bzl", "java_image")

java_library(
    name = "library",
    srcs = glob([
        "src/main/java/**/*.java",
    ]),
    visibility = ["//visibility:public"],
    deps = [
        "//core",
        "@maven//:ch_qos_logback_logback_classic",
        "@maven//:commons_io_commons_io",
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
    ],
)

java_image(
    name = "image",
    srcs = glob([
        "src/main/java/**/*.java",
    ]),
    layers = [":library"],
    main_class = "me.rajarya.learning.service.App",
    visibility = ["//visibility:public"],
    deps = [
        "//core",
        "@maven//:ch_qos_logback_logback_classic",
        "@maven//:commons_io_commons_io",
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
    ],
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
