import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_ItemOwnershipTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_ItemOwnership() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_ItemOwnership.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_ITEMOWNERSHIP_API_LATEST)
            XCTAssertNil(cstruct.Id)
            XCTAssertEqual(cstruct.OwnershipStatus, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_ItemOwnership(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_ITEMOWNERSHIP_API_LATEST)
            XCTAssertNil(swiftObject.Id)
            XCTAssertEqual(swiftObject.OwnershipStatus, .zero) }
    }
}
