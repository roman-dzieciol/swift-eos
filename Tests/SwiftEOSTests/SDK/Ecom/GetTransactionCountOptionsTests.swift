import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_GetTransactionCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetTransactionCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetTransactionCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetTransactionCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
