load("@rules_java//java:defs.bzl", "java_binary", "java_library")
load("//:skylib/junit.bzl", "junit_tests")

java_library(
    name = "core",
    srcs = glob([
        "src/main/java/**/*.java",
    ]),
    visibility = ["//visibility:public"],
    deps = [
        "@maven//:ch_qos_logback_logback_classic",
        "@maven//:com_fasterxml_jackson_core_jackson_databind",
        "@maven//:org_apache_httpcomponents_httpclient",
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
    deps = [
        ":core",
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
