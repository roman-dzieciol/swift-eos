import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Lobby_QueryInvitesCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Lobby_QueryInvitesCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Lobby_QueryInvitesCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Lobby_QueryInvitesCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
