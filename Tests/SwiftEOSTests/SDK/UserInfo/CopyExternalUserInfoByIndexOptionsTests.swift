import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_UserInfo_CopyExternalUserInfoByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo_CopyExternalUserInfoByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo_CopyExternalUserInfoByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertEqual(swiftObject.Index, .zero) }
    }
}
