import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Friends_RejectInviteCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_RejectInviteCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_RejectInviteCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_RejectInviteCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
