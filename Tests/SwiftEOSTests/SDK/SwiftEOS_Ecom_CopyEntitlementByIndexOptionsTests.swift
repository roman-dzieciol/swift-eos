import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyEntitlementByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyEntitlementByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyEntitlementByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.EntitlementIndex, .zero)
            let swiftObject = try SwiftEOS_Ecom_CopyEntitlementByIndexOptions(sdkObject: cstruct) }
    }
}
