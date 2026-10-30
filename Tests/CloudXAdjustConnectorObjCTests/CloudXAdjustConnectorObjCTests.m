@import CloudXAdjustConnector;
@import CloudXAdjustConnectorPackage;
@import XCTest;

@interface CloudXAdjustConnectorObjCTests : XCTestCase
@end

@implementation CloudXAdjustConnectorObjCTests

- (void)testFrameworkIsLinked {
    XCTAssertEqualObjects(CLXAdjustConnectorVersion, @"5.0.0.0");
    XCTAssertNotNil(NSClassFromString(@"CLXAdjustConnector"));
}

@end
