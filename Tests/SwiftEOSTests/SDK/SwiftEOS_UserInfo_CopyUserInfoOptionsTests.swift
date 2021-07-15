import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfo_CopyUserInfoOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_CopyUserInfoOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_CopyUserInfoOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try SwiftEOS_UserInfo_CopyUserInfoOptions(sdkObject: cstruct) }
    }
}
