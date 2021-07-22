import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Friends_SendInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_SendInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_SendInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_SendInviteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
