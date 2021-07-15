import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyEntitlementByIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyEntitlementByIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyEntitlementByIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.EntitlementId)
            let swiftObject = try SwiftEOS_Ecom_CopyEntitlementByIdOptions(sdkObject: cstruct) }
    }
}
