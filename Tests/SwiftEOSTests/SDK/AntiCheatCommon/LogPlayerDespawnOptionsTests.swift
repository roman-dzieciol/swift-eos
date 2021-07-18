import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerDespawnOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerDespawnOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerDespawnOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.DespawnedPlayerHandle)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogPlayerDespawnOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.DespawnedPlayerHandle) }
    }
}
