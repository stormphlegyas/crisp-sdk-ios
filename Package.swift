// swift-tools-version:5.7
import PackageDescription

let package = Package(
  name: "Crisp",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "Crisp", targets: ["CrispTarget"])
  ],
  targets: [
    .target(
      name: "CrispTarget",
      dependencies: [
        .target(name: "Crisp")
      ]
    ),
    .binaryTarget(
      name: "Crisp",
      url: "https://github.com/crisp-im/crisp-sdk-ios/releases/download/2.6.0/Crisp_2.6.0.zip",
      checksum: "aca5fd52e08db4bd0de1a11a96eea061fe263d12f3f9fed81a38fd15cb26bb98"
    ),
  ]
)
