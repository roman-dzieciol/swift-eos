import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoByExternalAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ExternalAccountId)
            XCTAssertEqual(cstruct.AccountType, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_QueryUserInfoByExternalAccountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ExternalAccountId)
            XCTAssertEqual(swiftObject.AccountType, .zero) }
    }
}
