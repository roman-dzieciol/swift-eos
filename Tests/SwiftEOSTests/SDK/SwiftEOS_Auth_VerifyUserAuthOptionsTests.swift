import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_VerifyUserAuthOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_VerifyUserAuthOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_VerifyUserAuthOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AuthToken)
            let swiftObject = try SwiftEOS_Auth_VerifyUserAuthOptions(sdkObject: cstruct) }
    }
}
