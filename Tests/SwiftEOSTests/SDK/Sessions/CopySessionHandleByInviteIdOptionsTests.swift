import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_CopySessionHandleByInviteIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_CopySessionHandleByInviteIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_CopySessionHandleByInviteIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.InviteId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_CopySessionHandleByInviteIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.InviteId) }
    }
}
