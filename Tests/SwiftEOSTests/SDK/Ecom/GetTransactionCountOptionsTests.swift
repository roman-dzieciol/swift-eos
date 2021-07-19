import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_GetTransactionCountOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_GetTransactionCountOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_GetTransactionCountOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ECOM_GETTRANSACTIONCOUNT_API_LATEST)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_GetTransactionCountOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ECOM_GETTRANSACTIONCOUNT_API_LATEST)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
