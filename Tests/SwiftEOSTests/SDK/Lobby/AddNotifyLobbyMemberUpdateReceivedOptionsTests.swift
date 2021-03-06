import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
