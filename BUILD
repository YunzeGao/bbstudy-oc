load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
package(default_visibility = ["//visibility:public"])

ios_application(
    name = "bbstudy",
    bundle_id = "bbstudy",
    launch_storyboard = "bbstudy/Launch Screen.storyboard",
    families = [
        "iphone",
    ],
    minimum_os_version = "14.0",
    infoplists = ["bbstudy/Info.plist"],
    deps = ["ios-app-bin"],
)

objc_library(
    name = "ios-app-bin",
    srcs = glob([
         "bbstudy/*.m",
         "bbstudy/*.h",
    ]),
    deps = ["//srcs/app/BBLancher:bb_lancher_library",]
)