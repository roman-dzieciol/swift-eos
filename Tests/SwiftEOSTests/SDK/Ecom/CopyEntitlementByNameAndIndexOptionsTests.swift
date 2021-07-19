import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyEntitlementByNameAndIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyEntitlementByNameAndIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.EntitlementName)
            XCTAssertEqual(cstruct.Index, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CopyEntitlementByNameAndIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.EntitlementName)
            XCTAssertEqual(swiftObject.Index, .zero) }
    }
}
