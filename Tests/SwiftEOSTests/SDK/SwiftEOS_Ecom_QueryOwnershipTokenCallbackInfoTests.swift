import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Ecom_QueryOwnershipTokenCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Ecom_QueryOwnershipTokenCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.OwnershipToken)
            let swiftObject = try SwiftEOS_Ecom_QueryOwnershipTokenCallbackInfo(sdkObject: cstruct) }
    }
}
