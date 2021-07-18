import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CheckoutOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CheckoutOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CheckoutOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OverrideCatalogNamespace)
            XCTAssertEqual(cstruct.EntryCount, .zero)
            XCTAssertNil(cstruct.Entries)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CheckoutOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OverrideCatalogNamespace)
            XCTAssertEqual(swiftObject.EntryCount, .zero)
            XCTAssertNil(swiftObject.Entries) }
    }
}
