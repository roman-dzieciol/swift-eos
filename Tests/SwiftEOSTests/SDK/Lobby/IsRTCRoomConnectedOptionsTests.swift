import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_IsRTCRoomConnectedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_IsRTCRoomConnectedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_IsRTCRoomConnectedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_IsRTCRoomConnectedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
