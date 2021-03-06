import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_CreateUserCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CreateUserCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CreateUserCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CreateUserCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
