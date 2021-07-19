import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AddNotifyJoinLobbyAcceptedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_ADDNOTIFYJOINLOBBYACCEPTED_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_AddNotifyJoinLobbyAcceptedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_ADDNOTIFYJOINLOBBYACCEPTED_API_LATEST) }
    }
}
