import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.bIsConnected, .zero)
            XCTAssertEqual(cstruct.DisconnectReason, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.LobbyId)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.bIsConnected, false)
            XCTAssertEqual(swiftObject.DisconnectReason, .zero) }
    }
}
