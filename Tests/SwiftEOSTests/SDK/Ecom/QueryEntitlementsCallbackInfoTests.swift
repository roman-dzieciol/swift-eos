import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_QueryEntitlementsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryEntitlementsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryEntitlementsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryEntitlementsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
