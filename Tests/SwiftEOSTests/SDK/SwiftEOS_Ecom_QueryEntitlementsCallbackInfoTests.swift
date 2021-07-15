import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_QueryEntitlementsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryEntitlementsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryEntitlementsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try SwiftEOS_Ecom_QueryEntitlementsCallbackInfo(sdkObject: cstruct) }
    }
}
