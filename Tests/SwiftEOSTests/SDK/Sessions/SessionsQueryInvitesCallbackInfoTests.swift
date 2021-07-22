import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_QueryInvitesCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_QueryInvitesCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_QueryInvitesCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_QueryInvitesCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
