// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "test-package-deploy",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "test-package-deploy",
            targets: [
                "app-framework",
                "flutter-plugin-framework",
                "flutter-toast-framework",
                "toast-framework",
                "shared_preferences-framework",
            ]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "app-framework", path: "./App.xcframework"),
        .binaryTarget(name: "flutter-plugin-framework", path: "./FlutterPluginRegistrant.xcframework"),
        .binaryTarget(name: "flutter-toast-framework", path: "./fluttertoast.xcframework"),
        .binaryTarget(name: "toast-framework", path: "./Toast.xcframework"),
        .binaryTarget(name: "shared_preferences-framework", path: "./shared_preferences.xcframework"),
    ]
)
