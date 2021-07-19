import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_GetPermissionsCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_GetPermissionsCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_GetPermissionsCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_GetPermissionsCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_KWS_GETPERMISSIONSCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
