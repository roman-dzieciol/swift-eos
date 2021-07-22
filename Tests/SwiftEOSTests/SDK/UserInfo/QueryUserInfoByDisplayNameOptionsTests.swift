import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.DisplayName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.DisplayName) }
    }
}
