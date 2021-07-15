import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_IsRTCRoomConnectedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_IsRTCRoomConnectedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_IsRTCRoomConnectedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Lobby_IsRTCRoomConnectedOptions(sdkObject: cstruct) }
    }
}
