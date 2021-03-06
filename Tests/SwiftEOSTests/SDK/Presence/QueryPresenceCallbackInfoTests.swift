import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Presence_QueryPresenceCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_QueryPresenceCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_QueryPresenceCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            XCTAssertNil(cstruct.TargetUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_QueryPresenceCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId)
            XCTAssertNil(swiftObject.TargetUserId) }
    }
}
