import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_KickMemberCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_KickMemberCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_KickMemberCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_KickMemberCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
