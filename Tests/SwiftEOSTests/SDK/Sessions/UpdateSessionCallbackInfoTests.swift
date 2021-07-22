import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_UpdateSessionCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_UpdateSessionCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_UpdateSessionCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.SessionId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_UpdateSessionCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.SessionId) }
    }
}
