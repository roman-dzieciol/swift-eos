import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedOptions(sdkObject: cstruct) }
    }
}
