import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_RedeemEntitlementsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_RedeemEntitlementsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_RedeemEntitlementsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_RedeemEntitlementsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
