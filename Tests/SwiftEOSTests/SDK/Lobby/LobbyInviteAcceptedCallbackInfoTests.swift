import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.InviteId)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.InviteId)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
