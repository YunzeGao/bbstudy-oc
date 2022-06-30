load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
package(default_visibility = ["//visibility:public"])

ios_application(
    name = "bbstudy",
    bundle_id = "bbstudy",
    families = [
        "iphone",
    ],
    minimum_os_version = "14.0",
    infoplists = ["Info.plist"],
    # deps = ["ios-app-bin"],
)