import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CheckoutEntryTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CheckoutEntry() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CheckoutEntry.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.OfferId)
            let swiftObject = try SwiftEOS_Ecom_CheckoutEntry(sdkObject: cstruct) }
    }
}
