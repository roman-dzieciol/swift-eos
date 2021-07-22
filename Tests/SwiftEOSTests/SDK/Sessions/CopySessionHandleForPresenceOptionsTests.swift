import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_CopySessionHandleForPresenceOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_CopySessionHandleForPresenceOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_CopySessionHandleForPresenceOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_CopySessionHandleForPresenceOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
