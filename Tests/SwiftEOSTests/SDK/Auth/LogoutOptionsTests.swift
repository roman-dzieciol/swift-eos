import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LogoutOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LogoutOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LogoutOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_AUTH_LOGOUT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LogoutOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_AUTH_LOGOUT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
