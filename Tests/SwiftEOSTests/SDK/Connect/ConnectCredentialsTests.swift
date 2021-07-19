import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CredentialsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_Credentials() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_Credentials.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_CREDENTIALS_API_LATEST)
            XCTAssertNil(cstruct.Token)
            XCTAssertEqual(cstruct.Type, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_Credentials(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_CREDENTIALS_API_LATEST)
            XCTAssertNil(swiftObject.Token)
            XCTAssertEqual(swiftObject.Type, .zero) }
    }
}
