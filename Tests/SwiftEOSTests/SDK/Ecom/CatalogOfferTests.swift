import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_CatalogOfferTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CatalogOffer() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CatalogOffer.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertEqual(cstruct.ServerIndex, .zero)
            XCTAssertNil(cstruct.CatalogNamespace)
            XCTAssertNil(cstruct.Id)
            XCTAssertNil(cstruct.TitleText)
            XCTAssertNil(cstruct.DescriptionText)
            XCTAssertNil(cstruct.LongDescriptionText)
            XCTAssertNil(cstruct.TechnicalDetailsText_DEPRECATED)
            XCTAssertNil(cstruct.CurrencyCode)
            XCTAssertEqual(cstruct.PriceResult, .zero)
            XCTAssertEqual(cstruct.OriginalPrice_DEPRECATED, .zero)
            XCTAssertEqual(cstruct.CurrentPrice_DEPRECATED, .zero)
            XCTAssertEqual(cstruct.DiscountPercentage, .zero)
            XCTAssertEqual(cstruct.ExpirationTimestamp, .zero)
            XCTAssertEqual(cstruct.PurchasedCount, .zero)
            XCTAssertEqual(cstruct.PurchaseLimit, .zero)
            XCTAssertEqual(cstruct.bAvailableForPurchase, .zero)
            XCTAssertEqual(cstruct.OriginalPrice64, .zero)
            XCTAssertEqual(cstruct.CurrentPrice64, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CatalogOffer(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertEqual(swiftObject.ServerIndex, .zero)
            XCTAssertNil(swiftObject.CatalogNamespace)
            XCTAssertNil(swiftObject.Id)
            XCTAssertNil(swiftObject.TitleText)
            XCTAssertNil(swiftObject.DescriptionText)
            XCTAssertNil(swiftObject.LongDescriptionText)
            XCTAssertNil(swiftObject.TechnicalDetailsText_DEPRECATED)
            XCTAssertNil(swiftObject.CurrencyCode)
            XCTAssertEqual(swiftObject.PriceResult, .zero)
            XCTAssertEqual(swiftObject.OriginalPrice_DEPRECATED, .zero)
            XCTAssertEqual(swiftObject.CurrentPrice_DEPRECATED, .zero)
            XCTAssertEqual(swiftObject.DiscountPercentage, .zero)
            XCTAssertEqual(swiftObject.ExpirationTimestamp, .zero)
            XCTAssertEqual(swiftObject.PurchasedCount, .zero)
            XCTAssertEqual(swiftObject.PurchaseLimit, .zero)
            XCTAssertEqual(swiftObject.bAvailableForPurchase, false)
            XCTAssertEqual(swiftObject.OriginalPrice64, .zero)
            XCTAssertEqual(swiftObject.CurrentPrice64, .zero) }
    }
}
