import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UI_ShowFriendsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_ShowFriendsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_ShowFriendsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_ShowFriendsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
