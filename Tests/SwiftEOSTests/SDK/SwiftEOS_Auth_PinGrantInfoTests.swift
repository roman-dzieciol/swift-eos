import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_PinGrantInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_PinGrantInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_PinGrantInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.UserCode)
            XCTAssertNil(cstruct.VerificationURI)
            XCTAssertEqual(cstruct.ExpiresIn, .zero)
            XCTAssertNil(cstruct.VerificationURIComplete)
            let swiftObject = try SwiftEOS_Auth_PinGrantInfo(sdkObject: cstruct) }
    }
}
