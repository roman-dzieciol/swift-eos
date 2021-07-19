import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_AntiCheatCommon_LogPlayerTakeDamageOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_AntiCheatCommon_LogPlayerTakeDamageOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERTAKEDAMAGE_API_LATEST)
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
            XCTAssertEqual(cstruct.DamageSource, .zero)
            XCTAssertEqual(cstruct.DamageType, .zero)
            XCTAssertEqual(cstruct.DamageResult, .zero)
            XCTAssertNil(cstruct.PlayerUseWeaponData)
            XCTAssertEqual(cstruct.TimeSincePlayerUseWeaponMs, .zero)
            let swiftObject = try XCTUnwrap(try SwiftEOS_AntiCheatCommon_LogPlayerTakeDamageOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERTAKEDAMAGE_API_LATEST)
            XCTAssertNil(swiftObject.VictimPlayerHandle)
            XCTAssertNil(swiftObject.VictimPlayerPosition)
            XCTAssertNil(swiftObject.VictimPlayerViewRotation)
            XCTAssertNil(swiftObject.AttackerPlayerHandle)
            XCTAssertNil(swiftObject.AttackerPlayerPosition)
            XCTAssertNil(swiftObject.AttackerPlayerViewRotation)
            XCTAssertEqual(swiftObject.bIsHitscanAttack, false)
            XCTAssertEqual(swiftObject.bHasLineOfSight, false)
            XCTAssertEqual(swiftObject.bIsCriticalHit, false)
            XCTAssertEqual(swiftObject.HitBoneId, .zero)
            XCTAssertEqual(swiftObject.DamageTaken, .zero)
            XCTAssertEqual(swiftObject.HealthRemaining, .zero)
            XCTAssertEqual(swiftObject.DamageSource, .zero)
            XCTAssertEqual(swiftObject.DamageType, .zero)
            XCTAssertEqual(swiftObject.DamageResult, .zero)
            XCTAssertNil(swiftObject.PlayerUseWeaponData)
            XCTAssertEqual(swiftObject.TimeSincePlayerUseWeaponMs, .zero) }
    }
}
