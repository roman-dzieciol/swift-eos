import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_LOBBY_ADDNOTIFYRTCROOMCONNECTIONCHANGED_API_LATEST)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_AddNotifyRTCRoomConnectionChangedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_LOBBY_ADDNOTIFYRTCROOMCONNECTIONCHANGED_API_LATEST)
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
