import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_GetExternalUserInfoCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_GetExternalUserInfoCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_GetExternalUserInfoCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_UserInfo_GetExternalUserInfoCountOptions(sdkObject: cstruct) }
    }
}
