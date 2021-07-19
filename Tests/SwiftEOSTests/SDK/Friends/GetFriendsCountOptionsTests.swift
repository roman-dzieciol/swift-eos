import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_GetFriendsCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_GetFriendsCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_GetFriendsCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_FRIENDS_GETFRIENDSCOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_GetFriendsCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_FRIENDS_GETFRIENDSCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
