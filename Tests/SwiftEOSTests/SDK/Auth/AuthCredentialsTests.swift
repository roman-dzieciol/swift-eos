import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_CredentialsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_Credentials() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_Credentials.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Id)
            XCTAssertNil(cstruct.Token)
            XCTAssertEqual(cstruct.Type, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.SystemAuthCredentialsOptions)
            XCTAssertEqual(cstruct.ExternalType, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_Credentials(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Id)
            XCTAssertNil(swiftObject.Token)
            XCTAssertEqual(swiftObject.Type, .init(rawValue: .zero)!)
            XCTAssertNil(swiftObject.SystemAuthCredentialsOptions)
            XCTAssertEqual(swiftObject.ExternalType, .init(rawValue: .zero)!) }
    }
}