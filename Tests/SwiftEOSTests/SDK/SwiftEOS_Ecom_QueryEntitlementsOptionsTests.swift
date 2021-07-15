import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_QueryEntitlementsOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryEntitlementsOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryEntitlementsOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.EntitlementNames)
            XCTAssertEqual(cstruct.EntitlementNameCount, .zero)
            XCTAssertEqual(cstruct.bIncludeRedeemed, .zero)
            let swiftObject = try SwiftEOS_Ecom_QueryEntitlementsOptions(sdkObject: cstruct) }
    }
}
