import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_EndSessionCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_EndSessionCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_EndSessionCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_EndSessionCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
