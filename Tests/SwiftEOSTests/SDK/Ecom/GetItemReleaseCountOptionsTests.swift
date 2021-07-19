import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_GetItemReleaseCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetItemReleaseCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetItemReleaseCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_GETITEMRELEASECOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ItemId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetItemReleaseCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_GETITEMRELEASECOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ItemId) }
    }
}
