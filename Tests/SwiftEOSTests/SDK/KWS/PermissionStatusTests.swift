import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_PermissionStatusTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_PermissionStatus() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_PermissionStatus.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_KWS_PERMISSIONSTATUS_API_LATEST)
            XCTAssertNil(cstruct.Name)
            XCTAssertEqual(cstruct.Status, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_PermissionStatus(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_KWS_PERMISSIONSTATUS_API_LATEST)
            XCTAssertNil(swiftObject.Name)
            XCTAssertEqual(swiftObject.Status, .zero) }
    }
}
