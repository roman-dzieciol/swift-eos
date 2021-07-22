import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
