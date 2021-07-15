import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertNil(cstruct.MessageData)
            XCTAssertEqual(cstruct.MessageDataSizeBytes, .zero)
            let swiftObject = try SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo(sdkObject: cstruct) }
    }
}
