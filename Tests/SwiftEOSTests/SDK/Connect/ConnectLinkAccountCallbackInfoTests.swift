import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_LinkAccountCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_LinkAccountCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_LinkAccountCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_LinkAccountCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
