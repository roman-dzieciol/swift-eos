import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_SessionSearch_FindCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_SessionSearch_FindCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_SessionSearch_FindCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_SessionSearch_FindCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
