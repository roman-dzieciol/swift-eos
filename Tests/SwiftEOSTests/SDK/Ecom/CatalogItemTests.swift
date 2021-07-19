import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CatalogItemTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CatalogItem() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CatalogItem.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.CatalogNamespace)
            XCTAssertNil(cstruct.Id)
            XCTAssertNil(cstruct.EntitlementName)
            XCTAssertNil(cstruct.TitleText)
            XCTAssertNil(cstruct.DescriptionText)
            XCTAssertNil(cstruct.LongDescriptionText)
            XCTAssertNil(cstruct.TechnicalDetailsText)
            XCTAssertNil(cstruct.DeveloperText)
            XCTAssertEqual(cstruct.ItemType, .zero)
            XCTAssertEqual(cstruct.EntitlementEndTimestamp, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CatalogItem(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.CatalogNamespace)
            XCTAssertNil(swiftObject.Id)
            XCTAssertNil(swiftObject.EntitlementName)
            XCTAssertNil(swiftObject.TitleText)
            XCTAssertNil(swiftObject.DescriptionText)
            XCTAssertNil(swiftObject.LongDescriptionText)
            XCTAssertNil(swiftObject.TechnicalDetailsText)
            XCTAssertNil(swiftObject.DeveloperText)
            XCTAssertEqual(swiftObject.ItemType, .zero)
            XCTAssertEqual(swiftObject.EntitlementEndTimestamp, .zero) }
    }
}
