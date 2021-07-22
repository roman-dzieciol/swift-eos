import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Friends_AcceptInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_AcceptInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_AcceptInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_AcceptInviteOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
