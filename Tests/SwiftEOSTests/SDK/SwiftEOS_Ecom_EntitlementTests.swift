import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_EntitlementTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_Entitlement() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_Entitlement.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.EntitlementName)
            XCTAssertNil(cstruct.EntitlementId)
            XCTAssertNil(cstruct.CatalogItemId)
            XCTAssertEqual(cstruct.ServerIndex, .zero)
            XCTAssertEqual(cstruct.bRedeemed, .zero)
            XCTAssertEqual(cstruct.EndTimestamp, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_Entitlement(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.EntitlementName)
            XCTAssertNil(swiftObject.EntitlementId)
            XCTAssertNil(swiftObject.CatalogItemId)
            XCTAssertEqual(swiftObject.ServerIndex, .zero)
            XCTAssertEqual(swiftObject.bRedeemed, false)
            XCTAssertEqual(swiftObject.EndTimestamp, .zero) }
    }
}
