import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_QueryUserInfoByDisplayNameOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.DisplayName)
            let swiftObject = try SwiftEOS_UserInfo_QueryUserInfoByDisplayNameOptions(sdkObject: cstruct) }
    }
}
