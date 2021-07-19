import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AddNotifyLobbyInviteAcceptedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYINVITEACCEPTED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_AddNotifyLobbyInviteAcceptedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYINVITEACCEPTED_API_LATEST) }
    }
}
