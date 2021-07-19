import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_GetEntitlementsCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetEntitlementsCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetEntitlementsCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_GETENTITLEMENTSCOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetEntitlementsCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_GETENTITLEMENTSCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
