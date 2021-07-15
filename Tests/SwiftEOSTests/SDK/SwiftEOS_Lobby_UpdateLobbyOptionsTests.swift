import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_UpdateLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_UpdateLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_UpdateLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyModificationHandle)
            let swiftObject = try SwiftEOS_Lobby_UpdateLobbyOptions(sdkObject: cstruct) }
    }
}
