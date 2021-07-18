import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_UserInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_UserInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_UserInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserId)
            XCTAssertNil(cstruct.Country)
            XCTAssertNil(cstruct.DisplayName)
            XCTAssertNil(cstruct.PreferredLanguage)
            XCTAssertNil(cstruct.Nickname)
            let swiftObject = try XCTUnwrap(try SwiftEOS_UserInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserId)
            XCTAssertNil(swiftObject.Country)
            XCTAssertNil(swiftObject.DisplayName)
            XCTAssertNil(swiftObject.PreferredLanguage)
            XCTAssertNil(swiftObject.Nickname) }
    }
}
