import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_ItemOwnershipTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_ItemOwnership() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_ItemOwnership.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.Id)
            XCTAssertEqual(cstruct.OwnershipStatus, .init(rawValue: .zero)!)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_ItemOwnership(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.Id)
            XCTAssertEqual(swiftObject.OwnershipStatus, .init(rawValue: .zero)!) }
    }
}
