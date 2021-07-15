import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.bIsConnected, .zero)
            XCTAssertEqual(cstruct.DisconnectReason, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo(sdkObject: cstruct) }
    }
}
