import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_GetOfferItemCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetOfferItemCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetOfferItemCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OfferId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetOfferItemCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OfferId) }
    }
}
