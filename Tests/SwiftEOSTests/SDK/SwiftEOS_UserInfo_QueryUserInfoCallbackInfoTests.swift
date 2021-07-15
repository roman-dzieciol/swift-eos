import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_QueryUserInfoCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_UserInfo_QueryUserInfoCallbackInfo(sdkObject: cstruct) }
    }
}
