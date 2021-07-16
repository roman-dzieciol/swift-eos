import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_ShowFriendsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_ShowFriendsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_ShowFriendsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_ShowFriendsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
