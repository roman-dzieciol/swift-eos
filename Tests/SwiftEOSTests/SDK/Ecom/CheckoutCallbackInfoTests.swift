import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CheckoutCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CheckoutCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CheckoutCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TransactionId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_CheckoutCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TransactionId) }
    }
}
