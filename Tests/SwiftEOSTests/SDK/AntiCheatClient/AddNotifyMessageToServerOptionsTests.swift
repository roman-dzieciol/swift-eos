import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatClient_AddNotifyMessageToServerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_AddNotifyMessageToServerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_AddNotifyMessageToServerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatClient_AddNotifyMessageToServerOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
