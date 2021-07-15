import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_DestroyLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_DestroyLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_DestroyLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try SwiftEOS_Lobby_DestroyLobbyOptions(sdkObject: cstruct) }
    }
}
