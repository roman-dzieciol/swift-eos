import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UI_GetToggleFriendsKeyOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_GetToggleFriendsKeyOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_GetToggleFriendsKeyOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_GetToggleFriendsKeyOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
