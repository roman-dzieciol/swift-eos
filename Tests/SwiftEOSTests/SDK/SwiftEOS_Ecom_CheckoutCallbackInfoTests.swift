import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_CheckoutCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_CheckoutCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_CheckoutCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TransactionId)
            let swiftObject = try SwiftEOS_Ecom_CheckoutCallbackInfo(sdkObject: cstruct) }
    }
}
