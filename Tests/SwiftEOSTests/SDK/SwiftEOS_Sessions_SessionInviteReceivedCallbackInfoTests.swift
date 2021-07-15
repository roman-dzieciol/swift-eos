import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_SessionInviteReceivedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_SessionInviteReceivedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_SessionInviteReceivedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.InviteId)
            let swiftObject = try SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo(sdkObject: cstruct) }
    }
}
