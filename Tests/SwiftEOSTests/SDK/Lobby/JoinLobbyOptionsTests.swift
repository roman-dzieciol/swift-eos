import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_JoinLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_JoinLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_JoinLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_JOINLOBBY_API_LATEST)
            XCTAssertNil(cstruct.LobbyDetailsHandle)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.bPresenceEnabled, .zero)
            XCTAssertNil(cstruct.LocalRTCOptions)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_JoinLobbyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_JOINLOBBY_API_LATEST)
            XCTAssertNil(swiftObject.LobbyDetailsHandle)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.bPresenceEnabled, false)
            XCTAssertNil(swiftObject.LocalRTCOptions) }
    }
}
