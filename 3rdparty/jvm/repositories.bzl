load("@maven//:defs.bzl", mvn_install_main_repo = "pinned_maven_install")

def setup_maven_repositories():
    mvn_install_main_repo()
