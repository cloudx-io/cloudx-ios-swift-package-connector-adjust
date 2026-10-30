# CloudX Adjust ad-revenue connector Swift package

This repository distributes the Adjust ad-revenue connector for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 16 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-connector-adjust.git
```

Select an exact package version from the compatibility table. Add the
`CloudXAdjustConnector` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

| Package version | CloudX ad-revenue connector | Adjust SDK |
| --- | --- | --- |
| `5000000.0.0` | `5.0.0.0` | `5.0.0` or later |

The package installs CloudX Core and Adjust SDK `5.0.0` or later. Initialize Adjust SDK as its own documentation describes. Import `CloudXCore` in the application. The ad-revenue connector registers when the application loads.

## Versioning

CloudX ad-revenue connector versions have four components. Swift package versions use three. The package tag joins the ad-revenue connector components into the major number. For example, ad-revenue connector `5.0.0.0` uses package version `5000000.0.0`.

## License

The CloudX ad-revenue connector uses the Business Source License 1.1. See [LICENSE](LICENSE).
