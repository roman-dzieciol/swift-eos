import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
