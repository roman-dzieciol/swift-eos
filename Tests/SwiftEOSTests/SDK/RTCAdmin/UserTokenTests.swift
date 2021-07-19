import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_RTCAdmin_UserTokenTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_RTCAdmin_UserToken() throws {
        try withZeroInitializedCStruct(type: _tagEOS_RTCAdmin_UserToken.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_RTCADMIN_USERTOKEN_API_LATEST)
            XCTAssertNil(cstruct.ProductUserId)
            XCTAssertNil(cstruct.Token)
            let swiftObject = try XCTUnwrap(try SwiftEOS_RTCAdmin_UserToken(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_RTCADMIN_USERTOKEN_API_LATEST)
            XCTAssertNil(swiftObject.ProductUserId)
            XCTAssertNil(swiftObject.Token) }
    }
}
