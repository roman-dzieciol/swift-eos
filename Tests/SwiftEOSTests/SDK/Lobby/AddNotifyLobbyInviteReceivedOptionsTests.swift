import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyLobbyInviteReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyLobbyInviteReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYINVITERECEIVED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYINVITERECEIVED_API_LATEST) }
    }
}
