import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_CreateUserOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_CreateUserOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_CreateUserOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_CREATEUSER_API_LATEST)
            XCTAssertNil(cstruct.ContinuanceToken)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_CreateUserOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_CREATEUSER_API_LATEST)
            XCTAssertNil(swiftObject.ContinuanceToken) }
    }
}
