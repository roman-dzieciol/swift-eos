import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_GetInviteIdByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_GetInviteIdByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_GetInviteIdByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try SwiftEOS_Sessions_GetInviteIdByIndexOptions(sdkObject: cstruct) }
    }
}
