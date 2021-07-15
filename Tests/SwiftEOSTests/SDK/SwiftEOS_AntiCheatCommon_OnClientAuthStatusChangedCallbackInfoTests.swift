import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.ClientAuthStatus, .init(rawValue: .zero)!)
            let swiftObject = try SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo(sdkObject: cstruct) }
    }
}
