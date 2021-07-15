import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_RequestPermissionsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_RequestPermissionsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_RequestPermissionsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.PermissionKeyCount, .zero)
            XCTAssertNil(cstruct.PermissionKeys)
            let swiftObject = try SwiftEOS_KWS_RequestPermissionsOptions(sdkObject: cstruct) }
    }
}
