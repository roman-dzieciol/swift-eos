import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_JoinLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_JoinLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_JoinLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyDetailsHandle)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.bPresenceEnabled, .zero)
            XCTAssertNil(cstruct.LocalRTCOptions)
            let swiftObject = try SwiftEOS_Lobby_JoinLobbyOptions(sdkObject: cstruct) }
    }
}
