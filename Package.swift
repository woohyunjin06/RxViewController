// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "RxViewController",
  products: [
    .library(name: "RxViewController", targets: ["RxViewController"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "4.0.0-rc.0")),
    .package(url: "https://github.com/devxoul/RxExpect.git", .branch("swift-4.0")),
  ],
  targets: [
    .target(name: "RxViewController", dependencies: ["RxSwift", "RxCocoa"]),
    .testTarget(name: "RxViewControllerTests", dependencies: ["RxViewController", "RxExpect"]),
  ]
)
