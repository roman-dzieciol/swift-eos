import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.AccountType, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.AccountType, .zero) }
    }
}
