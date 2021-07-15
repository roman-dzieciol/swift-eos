import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Lobby_AddNotifyLobbyMemberStatusReceivedOptions(sdkObject: cstruct) }
    }
}
