import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatServer_UnregisterClientOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_UnregisterClientOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_UnregisterClientOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.ClientHandle)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_UnregisterClientOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.ClientHandle) }
    }
}
