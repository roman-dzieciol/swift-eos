import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_Transaction_CopyEntitlementByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_Transaction_CopyEntitlementByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.EntitlementIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_Transaction_CopyEntitlementByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.EntitlementIndex, .zero) }
    }
}
