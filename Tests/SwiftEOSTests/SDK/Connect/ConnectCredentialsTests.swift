import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CredentialsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_Credentials() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_Credentials.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Token)
            XCTAssertEqual(cstruct.Type, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_Credentials(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Token)
            XCTAssertEqual(swiftObject.Type, .init(rawValue: .zero)!) }
    }
}
