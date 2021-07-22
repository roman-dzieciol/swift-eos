import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_JoinSessionCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_JoinSessionCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_JoinSessionCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_JoinSessionCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
