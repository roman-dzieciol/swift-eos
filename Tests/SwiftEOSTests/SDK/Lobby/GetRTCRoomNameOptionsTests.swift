import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_GetRTCRoomNameOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_GetRTCRoomNameOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_GetRTCRoomNameOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_GETRTCROOMNAME_API_LATEST)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_GetRTCRoomNameOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_GETRTCROOMNAME_API_LATEST)
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
