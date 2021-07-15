import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CopyTransactionByIndexOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CopyTransactionByIndexOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CopyTransactionByIndexOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertEqual(cstruct.TransactionIndex, .zero)
            let swiftObject = try SwiftEOS_Ecom_CopyTransactionByIndexOptions(sdkObject: cstruct) }
    }
}
