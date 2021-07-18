import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyOfferImageInfoByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyOfferImageInfoByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyOfferImageInfoByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OfferId)
            XCTAssertEqual(cstruct.ImageInfoIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CopyOfferImageInfoByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OfferId)
            XCTAssertEqual(swiftObject.ImageInfoIndex, .zero) }
    }
}
