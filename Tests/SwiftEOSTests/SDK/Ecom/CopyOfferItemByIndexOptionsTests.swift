import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyOfferItemByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyOfferItemByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyOfferItemByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OfferId)
            XCTAssertEqual(cstruct.ItemIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CopyOfferItemByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OfferId)
            XCTAssertEqual(swiftObject.ItemIndex, .zero) }
    }
}
