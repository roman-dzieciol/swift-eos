import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_RTCAdmin_CopyUserTokenByUserIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_CopyUserTokenByUserIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.QueryId, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAdmin_CopyUserTokenByUserIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.QueryId, .zero) }
    }
}
