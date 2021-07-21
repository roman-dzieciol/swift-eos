import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_ExternalUserInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_ExternalUserInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_ExternalUserInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.AccountType, .zero)
            XCTAssertNil(cstruct.AccountId)
            XCTAssertNil(cstruct.DisplayName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_ExternalUserInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.AccountType, .zero)
            XCTAssertNil(swiftObject.AccountId)
            XCTAssertNil(swiftObject.DisplayName) }
    }
}
