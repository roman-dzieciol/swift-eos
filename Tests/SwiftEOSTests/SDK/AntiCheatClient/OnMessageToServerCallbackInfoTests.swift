import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfoTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo.self) { cstruct in
            XCTAssertNil(cstruct.ClientData)
            XCTAssertNil(cstruct.MessageData)
            XCTAssertEqual(cstruct.MessageDataSizeBytes, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo(sdkObject: cstruct))
            XCTAssertNil(swiftObject.MessageData) }
    }
}
