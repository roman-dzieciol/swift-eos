import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_UpdateLobbyModificationOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_UpdateLobbyModificationOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_UpdateLobbyModificationOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_UpdateLobbyModificationOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
