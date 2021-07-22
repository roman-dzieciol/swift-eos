import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UserInfo_QueryUserInfoCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_QueryUserInfoCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
