import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatServer_UnregisterClientOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_UnregisterClientOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_UnregisterClientOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            let swiftObject = try SwiftEOS_AntiCheatServer_UnregisterClientOptions(sdkObject: cstruct) }
    }
}
