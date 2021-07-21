import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyItemImageInfoByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyItemImageInfoByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyItemImageInfoByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ItemId)
            XCTAssertEqual(cstruct.ImageInfoIndex, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CopyItemImageInfoByIndexOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ItemId)
            XCTAssertEqual(swiftObject.ImageInfoIndex, .zero) }
    }
}
