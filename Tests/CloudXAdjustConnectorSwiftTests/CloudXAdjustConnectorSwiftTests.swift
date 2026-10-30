import CloudXAdjustConnector
import CloudXAdjustConnectorPackage
import XCTest

final class CloudXAdjustConnectorSwiftTests: XCTestCase {
    func testFrameworkIsLinked() {
        XCTAssertEqual(CLXAdjustConnectorVersion, "5.0.0.0")
        XCTAssertNotNil(NSClassFromString("CLXAdjustConnector"))
    }
}
