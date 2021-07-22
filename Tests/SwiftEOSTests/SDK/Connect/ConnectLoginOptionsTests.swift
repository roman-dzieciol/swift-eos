import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Connect_LoginOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_LoginOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_LoginOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Credentials)
            XCTAssertNil(cstruct.UserLoginInfo)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_LoginOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Credentials)
            XCTAssertNil(swiftObject.UserLoginInfo) }
    }
}
