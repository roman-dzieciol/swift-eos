import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_GetItemImageInfoCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetItemImageInfoCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetItemImageInfoCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_GETITEMIMAGEINFOCOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ItemId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetItemImageInfoCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_GETITEMIMAGEINFOCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ItemId) }
    }
}
