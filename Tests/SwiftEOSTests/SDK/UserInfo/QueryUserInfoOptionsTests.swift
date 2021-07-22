import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UserInfo_QueryUserInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_QueryUserInfoOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
