import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_RejectInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_RejectInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_RejectInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_Friends_RejectInviteOptions(sdkObject: cstruct) }
    }
}
