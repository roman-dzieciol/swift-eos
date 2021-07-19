import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LinkAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LinkAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LinkAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_AUTH_LINKACCOUNT_API_LATEST)
            XCTAssertEqual(cstruct.LinkAccountFlags, .zero)
            XCTAssertNil(cstruct.ContinuanceToken)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LinkAccountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_AUTH_LINKACCOUNT_API_LATEST)
            XCTAssertEqual(swiftObject.LinkAccountFlags, .zero)
            XCTAssertNil(swiftObject.ContinuanceToken)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
