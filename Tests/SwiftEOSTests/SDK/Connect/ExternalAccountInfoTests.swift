import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Connect_ExternalAccountInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Connect_ExternalAccountInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Connect_ExternalAccountInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ProductUserId)
            XCTAssertNil(cstruct.DisplayName)
            XCTAssertNil(cstruct.AccountId)
            XCTAssertEqual(cstruct.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.LastLoginTime, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Connect_ExternalAccountInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.ProductUserId)
            XCTAssertNil(swiftObject.DisplayName)
            XCTAssertNil(swiftObject.AccountId)
            XCTAssertEqual(swiftObject.AccountIdType, .init(rawValue: .zero)!)
            XCTAssertEqual(swiftObject.LastLoginTime, .zero) }
    }
}
