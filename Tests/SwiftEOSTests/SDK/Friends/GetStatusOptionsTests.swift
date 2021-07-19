import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Friends_GetStatusOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Friends_GetStatusOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Friends_GetStatusOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_FRIENDS_GETSTATUS_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Friends_GetStatusOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_FRIENDS_GETSTATUS_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
