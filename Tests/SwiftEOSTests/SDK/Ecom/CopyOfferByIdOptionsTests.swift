import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_CopyOfferByIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyOfferByIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyOfferByIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OfferId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CopyOfferByIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OfferId) }
    }
}
