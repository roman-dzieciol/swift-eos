import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero) }
    }
}
