import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyLobbyInviteReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyLobbyInviteReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedOptions(sdkObject: cstruct) }
    }
}
