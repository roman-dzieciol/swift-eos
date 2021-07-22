import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_StartSessionCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_StartSessionCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_StartSessionCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_StartSessionCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
