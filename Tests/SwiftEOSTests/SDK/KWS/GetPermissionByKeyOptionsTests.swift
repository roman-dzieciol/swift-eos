import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_GetPermissionByKeyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_GetPermissionByKeyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_GetPermissionByKeyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_KWS_GETPERMISSIONBYKEY_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.Key)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_GetPermissionByKeyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_KWS_GETPERMISSIONBYKEY_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.Key) }
    }
}
