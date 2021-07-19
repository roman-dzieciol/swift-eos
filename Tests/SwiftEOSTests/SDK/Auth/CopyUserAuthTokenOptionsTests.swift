import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_CopyUserAuthTokenOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_CopyUserAuthTokenOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_CopyUserAuthTokenOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_AUTH_COPYUSERAUTHTOKEN_API_LATEST)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_CopyUserAuthTokenOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_AUTH_COPYUSERAUTHTOKEN_API_LATEST) }
    }
}
