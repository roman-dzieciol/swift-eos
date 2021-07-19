import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_DestroySessionCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_DestroySessionCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_DestroySessionCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_DestroySessionCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
