import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_JoinLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_JoinLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_JoinLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyDetailsHandle)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.bPresenceEnabled, .zero)
            XCTAssertNil(cstruct.LocalRTCOptions)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_JoinLobbyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LobbyDetailsHandle)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.bPresenceEnabled, false)
            XCTAssertNil(swiftObject.LocalRTCOptions) }
    }
}
