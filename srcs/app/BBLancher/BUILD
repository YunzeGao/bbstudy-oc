load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
package(default_visibility = ["//visibility:public"])

objc_library(
    name = "bb_lancher_library",
    module_name = "BBLancher",
    srcs = glob([
        "BBLancher/**/*.m",
        "BBLancher/**/*.h",
    ]),
    hdrs = glob(["include/BBLancher/*.h"]),
    includes = ["include"],
    copts = [
        "-iquote srcs/app/BBLancher",
        "-iquote srcs/app/BBLancher/include/BBLancher",
    ],
    deps = ["//srcs/base/Masonry:Masonry_library"]
)