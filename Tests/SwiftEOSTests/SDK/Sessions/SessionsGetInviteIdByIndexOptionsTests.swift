import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_GetInviteIdByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_GetInviteIdByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_GetInviteIdByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_GetInviteIdByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertEqual(swiftObject.Index, .zero) }
    }
}
