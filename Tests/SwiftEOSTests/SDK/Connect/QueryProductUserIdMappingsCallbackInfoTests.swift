import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_QueryProductUserIdMappingsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_QueryProductUserIdMappingsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_QueryProductUserIdMappingsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_QueryProductUserIdMappingsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
