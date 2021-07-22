import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
