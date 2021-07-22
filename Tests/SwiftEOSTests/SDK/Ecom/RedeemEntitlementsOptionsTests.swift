import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_RedeemEntitlementsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_RedeemEntitlementsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_RedeemEntitlementsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.EntitlementIdCount, .zero)
            XCTAssertNil(cstruct.EntitlementIds)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_RedeemEntitlementsOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.EntitlementIds) }
    }
}
