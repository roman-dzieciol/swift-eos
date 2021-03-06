import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_RegisterPlayersCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_RegisterPlayersCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_RegisterPlayersCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_RegisterPlayersCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero) }
    }
}
