import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_RejectInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_RejectInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_RejectInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.InviteId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_RejectInviteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.InviteId) }
    }
}
