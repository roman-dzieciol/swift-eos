import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo(sdkObject: cstruct) }
    }
}
