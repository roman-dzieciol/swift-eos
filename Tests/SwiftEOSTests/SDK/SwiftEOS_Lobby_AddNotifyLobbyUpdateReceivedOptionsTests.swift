import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedOptions(sdkObject: cstruct) }
    }
}
