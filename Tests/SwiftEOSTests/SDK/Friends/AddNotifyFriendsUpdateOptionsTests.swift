import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_AddNotifyFriendsUpdateOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_AddNotifyFriendsUpdateOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_AddNotifyFriendsUpdateOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_FRIENDS_ADDNOTIFYFRIENDSUPDATE_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_AddNotifyFriendsUpdateOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_FRIENDS_ADDNOTIFYFRIENDSUPDATE_API_LATEST) }
    }
}
