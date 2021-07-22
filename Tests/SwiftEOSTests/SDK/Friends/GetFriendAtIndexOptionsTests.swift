import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Friends_GetFriendAtIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_GetFriendAtIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_GetFriendAtIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_GetFriendAtIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Index, .zero) }
    }
}
