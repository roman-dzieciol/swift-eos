import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LobbyInviteReceivedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LobbyInviteReceivedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.InviteId)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo(sdkObject: cstruct) }
    }
}
