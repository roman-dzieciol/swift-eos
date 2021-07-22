import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Auth_DeletePersistentAuthCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_DeletePersistentAuthCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_DeletePersistentAuthCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_DeletePersistentAuthCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
