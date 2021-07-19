import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_KWS_UpdateParentEmailCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_KWS_UpdateParentEmailCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_KWS_UpdateParentEmailCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_KWS_UpdateParentEmailCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
