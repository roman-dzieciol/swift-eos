import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyOfferByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyOfferByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyOfferByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.OfferIndex, .zero)
            let swiftObject = try SwiftEOS_Ecom_CopyOfferByIndexOptions(sdkObject: cstruct) }
    }
}
