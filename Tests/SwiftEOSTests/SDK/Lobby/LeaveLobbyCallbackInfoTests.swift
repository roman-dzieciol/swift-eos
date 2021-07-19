import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_LeaveLobbyCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_LeaveLobbyCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_LeaveLobbyCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_LeaveLobbyCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
