import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Ecom_QueryOwnershipCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryOwnershipCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryOwnershipCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.ItemOwnership)
            XCTAssertEqual(cstruct.ItemOwnershipCount, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Ecom_QueryOwnershipCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.ItemOwnership) }
    }
}
