import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_HideFriendsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_HideFriendsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_HideFriendsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_HideFriendsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
