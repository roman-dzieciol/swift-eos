import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_QueryOwnershipOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryOwnershipOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryOwnershipOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.CatalogItemIds)
            XCTAssertEqual(cstruct.CatalogItemIdCount, .zero)
            XCTAssertNil(cstruct.CatalogNamespace)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryOwnershipOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.CatalogItemIds)
            XCTAssertNil(swiftObject.CatalogNamespace) }
    }
}
