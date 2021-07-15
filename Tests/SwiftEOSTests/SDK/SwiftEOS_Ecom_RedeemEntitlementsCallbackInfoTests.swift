import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_RedeemEntitlementsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_RedeemEntitlementsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_RedeemEntitlementsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo(sdkObject: cstruct) }
    }
}
