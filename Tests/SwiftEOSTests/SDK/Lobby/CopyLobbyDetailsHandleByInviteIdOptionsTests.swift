import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.InviteId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_CopyLobbyDetailsHandleByInviteIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.InviteId) }
    }
}
