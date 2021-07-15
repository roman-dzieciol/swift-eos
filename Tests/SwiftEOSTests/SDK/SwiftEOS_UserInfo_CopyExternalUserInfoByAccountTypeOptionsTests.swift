import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.AccountType, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeOptions(sdkObject: cstruct) }
    }
}
