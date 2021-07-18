import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sessions_RejectInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_RejectInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_RejectInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.InviteId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_RejectInviteOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.InviteId) }
    }
}
