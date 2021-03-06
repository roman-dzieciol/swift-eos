import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.DisplayName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.DisplayName) }
    }
}
