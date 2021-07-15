import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_GetFriendAtIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_GetFriendAtIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_GetFriendAtIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try SwiftEOS_Friends_GetFriendAtIndexOptions(sdkObject: cstruct) }
    }
}
