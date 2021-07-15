import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CatalogOfferTests: XCTestCase {
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
            XCTAssertEqual(cstruct.PriceResult, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.OriginalPrice_DEPRECATED, .zero)
            XCTAssertEqual(cstruct.CurrentPrice_DEPRECATED, .zero)
            XCTAssertEqual(cstruct.DiscountPercentage, .zero)
            XCTAssertEqual(cstruct.ExpirationTimestamp, .zero)
            XCTAssertEqual(cstruct.PurchasedCount, .zero)
            XCTAssertEqual(cstruct.PurchaseLimit, .zero)
            XCTAssertEqual(cstruct.bAvailableForPurchase, .zero)
            XCTAssertEqual(cstruct.OriginalPrice64, .zero)
            XCTAssertEqual(cstruct.CurrentPrice64, .zero)
            let swiftObject = try SwiftEOS_Ecom_CatalogOffer(sdkObject: cstruct) }
    }
}
