import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_SessionInviteAcceptedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_SessionInviteAcceptedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.SessionId)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.InviteId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.SessionId)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.InviteId) }
    }
}
