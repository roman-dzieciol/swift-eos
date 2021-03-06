import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Auth_LinkAccountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LinkAccountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LinkAccountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.LinkAccountFlags, .zero)
            XCTAssertNil(cstruct.ContinuanceToken)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LinkAccountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.LinkAccountFlags, .zero)
            XCTAssertNil(swiftObject.ContinuanceToken)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
