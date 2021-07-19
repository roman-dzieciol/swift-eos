import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_UserLoginInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_UserLoginInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_UserLoginInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_USERLOGININFO_API_LATEST)
            XCTAssertNil(cstruct.DisplayName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_UserLoginInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_USERLOGININFO_API_LATEST)
            XCTAssertNil(swiftObject.DisplayName) }
    }
}
