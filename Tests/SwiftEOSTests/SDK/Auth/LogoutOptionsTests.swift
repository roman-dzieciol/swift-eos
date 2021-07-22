import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Auth_LogoutOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LogoutOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LogoutOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LogoutOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
