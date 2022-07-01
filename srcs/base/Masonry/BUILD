load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
package(default_visibility = ["//visibility:public"])

objc_library(
    name = "Masonry_library",
    module_name = "Masonry",  
    srcs = glob([
        "Masonry/**/*.h",
        "Masonry/**/*.m",
    ]),
    hdrs = glob(["include/Masonry/*.h"]),
    includes = ["include"],
    copts = [
        "-iquote srcs/base/Masonry/Masonry",
        "-iquote srcs/base/Masonry/include/Masonry",
    ],
)