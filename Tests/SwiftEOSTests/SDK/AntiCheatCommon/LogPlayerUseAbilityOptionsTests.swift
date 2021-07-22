import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_AntiCheatCommon_LogPlayerUseAbilityOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerUseAbilityOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerUseAbilityOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.PlayerHandle)
            XCTAssertEqual(cstruct.AbilityId, .zero)
            XCTAssertEqual(cstruct.AbilityDurationMs, .zero)
            XCTAssertEqual(cstruct.AbilityCooldownMs, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogPlayerUseAbilityOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.PlayerHandle)
            XCTAssertEqual(swiftObject.AbilityId, .zero)
            XCTAssertEqual(swiftObject.AbilityDurationMs, .zero)
            XCTAssertEqual(swiftObject.AbilityCooldownMs, .zero) }
    }
}
