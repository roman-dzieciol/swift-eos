import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Friends_RejectInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_RejectInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_RejectInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_RejectInviteOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
