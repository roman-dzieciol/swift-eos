import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_SendInviteOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_SendInviteOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_SendInviteOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_SendInviteOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
