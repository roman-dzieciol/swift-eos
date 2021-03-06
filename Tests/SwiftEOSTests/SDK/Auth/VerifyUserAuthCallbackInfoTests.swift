import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Auth_VerifyUserAuthCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_VerifyUserAuthCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_VerifyUserAuthCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_VerifyUserAuthCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
