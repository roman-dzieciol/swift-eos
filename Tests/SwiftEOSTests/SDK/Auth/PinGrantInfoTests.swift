import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_PinGrantInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_PinGrantInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_PinGrantInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_AUTH_PINGRANTINFO_API_LATEST)
            XCTAssertNil(cstruct.UserCode)
            XCTAssertNil(cstruct.VerificationURI)
            XCTAssertEqual(cstruct.ExpiresIn, .zero)
            XCTAssertNil(cstruct.VerificationURIComplete)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_PinGrantInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_AUTH_PINGRANTINFO_API_LATEST)
            XCTAssertNil(swiftObject.UserCode)
            XCTAssertNil(swiftObject.VerificationURI)
            XCTAssertEqual(swiftObject.ExpiresIn, .zero)
            XCTAssertNil(swiftObject.VerificationURIComplete) }
    }
}
