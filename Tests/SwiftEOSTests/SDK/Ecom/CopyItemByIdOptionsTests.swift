import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyItemByIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyItemByIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyItemByIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ItemId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CopyItemByIdOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ItemId) }
    }
}
