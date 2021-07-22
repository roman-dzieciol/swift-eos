import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_QueryEntitlementsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryEntitlementsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryEntitlementsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.EntitlementNames)
            XCTAssertEqual(cstruct.EntitlementNameCount, .zero)
            XCTAssertEqual(cstruct.bIncludeRedeemed, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryEntitlementsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.EntitlementNames)
            XCTAssertEqual(swiftObject.bIncludeRedeemed, false) }
    }
}
