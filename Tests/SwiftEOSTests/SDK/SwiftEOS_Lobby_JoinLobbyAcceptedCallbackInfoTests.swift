import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.UiEventId, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.UiEventId, .zero) }
    }
}
