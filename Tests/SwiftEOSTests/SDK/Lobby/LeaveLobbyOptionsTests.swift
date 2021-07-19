import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_LeaveLobbyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LeaveLobbyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LeaveLobbyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_LEAVELOBBY_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_LeaveLobbyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_LEAVELOBBY_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
