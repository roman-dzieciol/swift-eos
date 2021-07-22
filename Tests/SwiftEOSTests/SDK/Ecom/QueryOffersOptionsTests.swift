import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_QueryOffersOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryOffersOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryOffersOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OverrideCatalogNamespace)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryOffersOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OverrideCatalogNamespace) }
    }
}
