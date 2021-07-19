import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_IsRTCRoomConnectedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_IsRTCRoomConnectedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_IsRTCRoomConnectedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_ISRTCROOMCONNECTED_API_LATEST)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_IsRTCRoomConnectedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_ISRTCROOMCONNECTED_API_LATEST)
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
