import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.AccountId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.AccountId) }
    }
}
