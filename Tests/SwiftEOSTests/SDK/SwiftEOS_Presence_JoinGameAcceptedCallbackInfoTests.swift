import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Presence_JoinGameAcceptedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_JoinGameAcceptedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_JoinGameAcceptedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.JoinInfo)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            let swiftObject = try SwiftEOS_Presence_JoinGameAcceptedCallbackInfo(sdkObject: cstruct) }
    }
}
