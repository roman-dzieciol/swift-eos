import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UI_HideFriendsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UI_HideFriendsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UI_HideFriendsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_UI_HIDEFRIENDS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UI_HideFriendsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_UI_HIDEFRIENDS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
