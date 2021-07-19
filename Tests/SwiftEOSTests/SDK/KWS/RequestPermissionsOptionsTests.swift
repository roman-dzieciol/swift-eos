import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_RequestPermissionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_RequestPermissionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_RequestPermissionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_KWS_REQUESTPERMISSIONS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.PermissionKeyCount, .zero)
            XCTAssertNil(cstruct.PermissionKeys)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_RequestPermissionsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_KWS_REQUESTPERMISSIONS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.PermissionKeys) }
    }
}
