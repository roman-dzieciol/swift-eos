import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_SendInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_SendInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_SendInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try SwiftEOS_Lobby_SendInviteCallbackInfo(sdkObject: cstruct) }
    }
}
