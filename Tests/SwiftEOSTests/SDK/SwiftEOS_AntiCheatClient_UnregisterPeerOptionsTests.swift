import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_UnregisterPeerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_UnregisterPeerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_UnregisterPeerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PeerHandle)
            let swiftObject = try SwiftEOS_AntiCheatClient_UnregisterPeerOptions(sdkObject: cstruct) }
    }
}
