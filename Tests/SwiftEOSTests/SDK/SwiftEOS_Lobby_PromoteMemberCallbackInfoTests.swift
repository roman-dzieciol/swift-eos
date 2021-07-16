import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_PromoteMemberCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_PromoteMemberCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_PromoteMemberCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LobbyId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_PromoteMemberCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.LobbyId) }
    }
}
