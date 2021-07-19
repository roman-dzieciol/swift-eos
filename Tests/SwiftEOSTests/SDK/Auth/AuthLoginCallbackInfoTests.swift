import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Auth_LoginCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Auth_LoginCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Auth_LoginCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.PinGrantInfo)
            XCTAssertNil(cstruct.ContinuanceToken)
            XCTAssertNil(cstruct.AccountFeatureRestrictedInfo)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Auth_LoginCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.PinGrantInfo)
            XCTAssertNil(swiftObject.ContinuanceToken)
            XCTAssertNil(swiftObject.AccountFeatureRestrictedInfo) }
    }
}
