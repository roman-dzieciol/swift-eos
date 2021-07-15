import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.CurrentStatus, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo(sdkObject: cstruct) }
    }
}
