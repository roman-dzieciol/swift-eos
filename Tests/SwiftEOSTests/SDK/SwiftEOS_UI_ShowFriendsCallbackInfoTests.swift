import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_ShowFriendsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_ShowFriendsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_ShowFriendsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_UI_ShowFriendsCallbackInfo(sdkObject: cstruct) }
    }
}
