import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_RegisterClientOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_RegisterClientOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_RegisterClientOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            XCTAssertEqual(cstruct.ClientType, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.ClientPlatform, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.AccountId)
            XCTAssertNil(cstruct.IpAddress)
            let swiftObject = try SwiftEOS_AntiCheatServer_RegisterClientOptions(sdkObject: cstruct) }
    }
}
