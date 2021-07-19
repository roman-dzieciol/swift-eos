import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_QueryFriendsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_QueryFriendsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_QueryFriendsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_FRIENDS_QUERYFRIENDS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_QueryFriendsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_FRIENDS_QUERYFRIENDS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
