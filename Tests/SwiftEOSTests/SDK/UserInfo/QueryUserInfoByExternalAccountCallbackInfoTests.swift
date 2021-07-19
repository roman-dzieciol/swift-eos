import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ExternalAccountId)
            XCTAssertEqual(cstruct.AccountType, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ExternalAccountId)
            XCTAssertEqual(swiftObject.AccountType, .zero)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
