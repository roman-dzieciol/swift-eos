import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try SwiftEOS_AntiCheatClient_AddNotifyPeerActionRequiredOptions(sdkObject: cstruct) }
    }
}
