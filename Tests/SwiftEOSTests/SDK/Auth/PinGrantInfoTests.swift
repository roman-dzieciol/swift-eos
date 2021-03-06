import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Auth_PinGrantInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_PinGrantInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_PinGrantInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserCode)
            XCTAssertNil(cstruct.VerificationURI)
            XCTAssertEqual(cstruct.ExpiresIn, .zero)
            XCTAssertNil(cstruct.VerificationURIComplete)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_PinGrantInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.UserCode)
            XCTAssertNil(swiftObject.VerificationURI)
            XCTAssertEqual(swiftObject.ExpiresIn, .zero)
            XCTAssertNil(swiftObject.VerificationURIComplete) }
    }
}
