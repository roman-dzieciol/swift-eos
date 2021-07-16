import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_Transaction_GetEntitlementsCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_Transaction_GetEntitlementsCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_Transaction_GetEntitlementsCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_Transaction_GetEntitlementsCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
