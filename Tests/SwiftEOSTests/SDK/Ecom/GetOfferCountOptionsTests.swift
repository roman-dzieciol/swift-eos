import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_GetOfferCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetOfferCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetOfferCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetOfferCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
