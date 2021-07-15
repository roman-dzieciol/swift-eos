import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_SendInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_SendInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_SendInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Lobby_SendInviteOptions(sdkObject: cstruct) }
    }
}
