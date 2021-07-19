import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_SendInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_SendInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_SendInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_SendInviteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
