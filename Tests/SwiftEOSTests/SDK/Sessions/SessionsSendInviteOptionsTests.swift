import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Sessions_SendInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sessions_SendInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sessions_SendInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.SessionName)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sessions_SendInviteOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.SessionName)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
