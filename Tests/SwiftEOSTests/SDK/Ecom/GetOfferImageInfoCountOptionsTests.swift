import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_GetOfferImageInfoCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetOfferImageInfoCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetOfferImageInfoCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OfferId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetOfferImageInfoCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OfferId) }
    }
}
