import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryOwnershipTokenCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryOwnershipTokenCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OwnershipToken)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.OwnershipToken) }
    }
}
