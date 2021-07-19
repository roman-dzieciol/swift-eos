import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CheckoutEntryTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CheckoutEntry() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CheckoutEntry.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_CHECKOUTENTRY_API_LATEST)
            XCTAssertNil(cstruct.OfferId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CheckoutEntry(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_CHECKOUTENTRY_API_LATEST)
            XCTAssertNil(swiftObject.OfferId) }
    }
}
