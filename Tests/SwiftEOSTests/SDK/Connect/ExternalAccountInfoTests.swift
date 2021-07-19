import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_ExternalAccountInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_ExternalAccountInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_ExternalAccountInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_CONNECT_EXTERNALACCOUNTINFO_API_LATEST)
            XCTAssertNil(cstruct.ProductUserId)
            XCTAssertNil(cstruct.DisplayName)
            XCTAssertNil(cstruct.AccountId)
            XCTAssertEqual(cstruct.AccountIdType, .zero)
            XCTAssertEqual(cstruct.LastLoginTime, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_ExternalAccountInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_CONNECT_EXTERNALACCOUNTINFO_API_LATEST)
            XCTAssertNil(swiftObject.ProductUserId)
            XCTAssertNil(swiftObject.DisplayName)
            XCTAssertNil(swiftObject.AccountId)
            XCTAssertEqual(swiftObject.AccountIdType, .zero)
            XCTAssertEqual(swiftObject.LastLoginTime, .zero) }
    }
}
