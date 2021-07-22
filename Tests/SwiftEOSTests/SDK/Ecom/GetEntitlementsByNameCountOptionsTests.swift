import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_GetEntitlementsByNameCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetEntitlementsByNameCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetEntitlementsByNameCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.EntitlementName)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetEntitlementsByNameCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.EntitlementName) }
    }
}
