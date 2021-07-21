import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_QueryOwnershipTokenOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryOwnershipTokenOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryOwnershipTokenOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.CatalogItemIds)
            XCTAssertEqual(cstruct.CatalogItemIdCount, .zero)
            XCTAssertNil(cstruct.CatalogNamespace)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryOwnershipTokenOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.CatalogItemIds)
            XCTAssertNil(swiftObject.CatalogNamespace) }
    }
}
