import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.TargetUserId)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Sanctions_QueryActivePlayerSanctionsCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.TargetUserId)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
