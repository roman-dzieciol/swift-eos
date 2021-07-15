import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ExternalAccountId)
            XCTAssertEqual(cstruct.AccountType, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptions(sdkObject: cstruct) }
    }
}
