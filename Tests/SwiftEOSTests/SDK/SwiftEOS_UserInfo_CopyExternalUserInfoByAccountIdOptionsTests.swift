import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.AccountId)
            let swiftObject = try SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions(sdkObject: cstruct) }
    }
}
