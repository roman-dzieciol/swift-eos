import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LogoutCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LogoutCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LogoutCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LogoutCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
