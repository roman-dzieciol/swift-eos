import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.ClientAuthStatus, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.ClientHandle)
            XCTAssertEqual(swiftObject.ClientAuthStatus, .zero) }
    }
}
