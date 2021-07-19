import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_CreateLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_CreateLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_CreateLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.MaxLobbyMembers, .zero)
            XCTAssertEqual(cstruct.PermissionLevel, .zero)
            XCTAssertEqual(cstruct.bPresenceEnabled, .zero)
            XCTAssertEqual(cstruct.bAllowInvites, .zero)
            XCTAssertNil(cstruct.BucketId)
            XCTAssertEqual(cstruct.bDisableHostMigration, .zero)
            XCTAssertEqual(cstruct.bEnableRTCRoom, .zero)
            XCTAssertNil(cstruct.LocalRTCOptions)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_CreateLobbyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.MaxLobbyMembers, .zero)
            XCTAssertEqual(swiftObject.PermissionLevel, .zero)
            XCTAssertEqual(swiftObject.bPresenceEnabled, false)
            XCTAssertEqual(swiftObject.bAllowInvites, false)
            XCTAssertNil(swiftObject.BucketId)
            XCTAssertEqual(swiftObject.bDisableHostMigration, false)
            XCTAssertEqual(swiftObject.bEnableRTCRoom, false)
            XCTAssertNil(swiftObject.LocalRTCOptions)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
