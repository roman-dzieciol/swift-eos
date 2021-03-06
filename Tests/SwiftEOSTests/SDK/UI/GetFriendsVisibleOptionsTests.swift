import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UI_GetFriendsVisibleOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_GetFriendsVisibleOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_GetFriendsVisibleOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_GetFriendsVisibleOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
