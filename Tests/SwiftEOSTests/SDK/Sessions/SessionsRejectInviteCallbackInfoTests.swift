import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_RejectInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_RejectInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_RejectInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_RejectInviteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
