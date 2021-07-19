import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_UpdateLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_UpdateLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_UpdateLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_UPDATELOBBY_API_LATEST)
            XCTAssertNil(cstruct.LobbyModificationHandle)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_UpdateLobbyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_UPDATELOBBY_API_LATEST)
            XCTAssertNil(swiftObject.LobbyModificationHandle) }
    }
}
