import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyTransactionByIdOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyTransactionByIdOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyTransactionByIdOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TransactionId)
            let swiftObject = try SwiftEOS_Ecom_CopyTransactionByIdOptions(sdkObject: cstruct) }
    }
}
