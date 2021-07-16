import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_TokenTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_Token() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_Token.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.App)
            XCTAssertNil(cstruct.ClientId)
            XCTAssertNil(cstruct.AccountId)
            XCTAssertNil(cstruct.AccessToken)
            XCTAssertEqual(cstruct.ExpiresIn, .zero)
            XCTAssertNil(cstruct.ExpiresAt)
            XCTAssertEqual(cstruct.AuthType, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.RefreshToken)
            XCTAssertEqual(cstruct.RefreshExpiresIn, .zero)
            XCTAssertNil(cstruct.RefreshExpiresAt)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_Token(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.App)
            XCTAssertNil(swiftObject.ClientId)
            XCTAssertNil(swiftObject.AccountId)
            XCTAssertNil(swiftObject.AccessToken)
            XCTAssertEqual(swiftObject.ExpiresIn, .zero)
            XCTAssertNil(swiftObject.ExpiresAt)
            XCTAssertEqual(swiftObject.AuthType, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.RefreshToken)
            XCTAssertEqual(swiftObject.RefreshExpiresIn, .zero)
            XCTAssertNil(swiftObject.RefreshExpiresAt) }
    }
}
