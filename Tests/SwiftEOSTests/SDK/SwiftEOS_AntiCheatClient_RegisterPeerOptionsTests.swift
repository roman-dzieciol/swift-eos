import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatClient_RegisterPeerOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatClient_RegisterPeerOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatClient_RegisterPeerOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PeerHandle)
            XCTAssertEqual(cstruct.ClientType, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.ClientPlatform, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.AccountId)
            XCTAssertNil(cstruct.IpAddress)
            let swiftObject = try SwiftEOS_AntiCheatClient_RegisterPeerOptions(sdkObject: cstruct) }
    }
}
