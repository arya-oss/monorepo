load("@rules_jvm_external//:defs.bzl", "maven_install")

def maven_dependencies():
    """Installs maven dependencies.
    """
    repos = [
        "https://repo.maven.apache.org/maven2",
    ]
    fetch_sources = True
    resolve_timeout = 1800
    strict_visibility = True
    use_unsafe_shared_cache = False
    version_conflict_policy = "pinned"

    maven_install(
        name = "maven",
        maven_install_json = "//3rdparty/jvm:maven-dependencies.json",
        artifacts = [
            "ch.qos.logback:logback-classic:1.2.10",
            "com.amazonaws:aws-java-sdk-core:1.11.870",
            "com.amazonaws:aws-java-sdk-emr:1.11.870",
        	"com.amazonaws:aws-java-sdk-s3:1.11.870",
        	"com.fasterxml.jackson.core:jackson-annotations:2.12.3",
            "com.fasterxml.jackson.core:jackson-core:2.12.3",
            "com.fasterxml.jackson.core:jackson-databind:2.12.3",
            "com.fasterxml.jackson.datatype:jackson-datatype-jsr310:2.12.3",
            "com.fasterxml.jackson.module:jackson-module-scala_2.12:2.12.3",
            "com.github.scopt:scopt_2.12:4.0.1",
            "io.prometheus:simpleclient:0.7.0",
            "io.prometheus:simpleclient_common:0.7.0",
            "io.prometheus:simpleclient_httpserver:0.7.0",
            "com.typesafe:config:1.4.0",
            "junit:junit:4.12",
            "mysql:mysql-connector-java:5.1.40",
            "org.slf4j:jcl-over-slf4j:1.7.22",
            "org.slf4j:log4j-over-slf4j:1.7.22",
            "org.slf4j:slf4j-api:1.7.22",
            "org.apache.hadoop:hadoop-core:1.2.1",
            "org.apache.hadoop:hadoop-client:3.3.1",
            "org.apache.httpcomponents:httpclient:4.5.13",
            "org.apache.spark:spark-avro_2.12:3.2.1",
            "org.apache.spark:spark-core_2.12:3.2.1",
            "org.apache.spark:spark-sql-kafka-0-10_2.12:3.2.1",
            "org.apache.spark:spark-sql_2.12:3.2.1",
            "org.apache.spark:spark-tags_2.12:3.2.1",
            "org.apache.spark:spark-unsafe_2.12:3.2.1",
            "org.hibernate.orm:hibernate-core:6.0.0.Final",
            "org.postgresql:postgresql:42.3.2",
            "org.scala-lang:scala-compiler:2.12.12",
            "org.scala-lang:scala-library:2.12.12",
            "org.scala-lang:scala-reflect:2.12.12",
            "org.scalatest:scalatest_2.12:3.0.5",
            "org.springframework:spring-aop:5.3.20",
            "org.springframework:spring-beans:5.3.20",
            "org.springframework:spring-context:5.3.20",
            "org.springframework:spring-core:5.3.20",
            "org.springframework:spring-test:5.3.20",
            "org.springframework:spring-tx:5.3.20",
            "org.springframework:spring-web:5.3.20",
            "org.springframework:spring-webmvc:5.3.20",
        ],
        repositories = repos,
        fetch_sources = True,
        resolve_timeout = 1800,
        strict_visibility = True,
        use_unsafe_shared_cache = False,
        version_conflict_policy = version_conflict_policy,
        generate_compat_repositories = True,
    )
