import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_Presence_SetPresenceCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_Presence_SetPresenceCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_Presence_SetPresenceCallbackInfo.self) { cstruct in
            XCTAssertEqual(cstruct.ResultCode, .zero)
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.LocalUserId)
            let swiftObject = try XCTUnwrap(try SwiftEOS_Presence_SetPresenceCallbackInfo(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ResultCode, .zero)
            XCTAssertNil(swiftObject.LocalUserId) }
    }
}
