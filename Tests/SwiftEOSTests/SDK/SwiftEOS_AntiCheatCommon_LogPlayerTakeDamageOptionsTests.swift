import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerTakeDamageOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerTakeDamageOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.VictimPlayerHandle)
            XCTAssertNil(cstruct.VictimPlayerPosition)
            XCTAssertNil(cstruct.VictimPlayerViewRotation)
            XCTAssertNil(cstruct.AttackerPlayerHandle)
            XCTAssertNil(cstruct.AttackerPlayerPosition)
            XCTAssertNil(cstruct.AttackerPlayerViewRotation)
            XCTAssertEqual(cstruct.bIsHitscanAttack, .zero)
            XCTAssertEqual(cstruct.bHasLineOfSight, .zero)
            XCTAssertEqual(cstruct.bIsCriticalHit, .zero)
            XCTAssertEqual(cstruct.HitBoneId, .zero)
            XCTAssertEqual(cstruct.DamageTaken, .zero)
            XCTAssertEqual(cstruct.HealthRemaining, .zero)
            XCTAssertEqual(cstruct.DamageSource, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.DamageType, .init(rawValue: .zero)!)
            XCTAssertEqual(cstruct.DamageResult, .init(rawValue: .zero)!)
            XCTAssertNil(cstruct.PlayerUseWeaponData)
            XCTAssertEqual(cstruct.TimeSincePlayerUseWeaponMs, .zero)
            let swiftObject = try SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptions(sdkObject: cstruct) }
    }
}
