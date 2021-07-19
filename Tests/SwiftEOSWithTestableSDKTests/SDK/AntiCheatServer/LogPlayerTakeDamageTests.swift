import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerTakeDamageTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerTakeDamage_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerTakeDamage = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERTAKEDAMAGE_API_LATEST)
                XCTAssertNil(Options!.pointee.VictimPlayerHandle)
                XCTAssertNil(Options!.pointee.VictimPlayerPosition)
                XCTAssertNil(Options!.pointee.VictimPlayerViewRotation)
                XCTAssertNil(Options!.pointee.AttackerPlayerHandle)
                XCTAssertNil(Options!.pointee.AttackerPlayerPosition)
                XCTAssertNil(Options!.pointee.AttackerPlayerViewRotation)
                XCTAssertEqual(Options!.pointee.bIsHitscanAttack, .zero)
                XCTAssertEqual(Options!.pointee.bHasLineOfSight, .zero)
                XCTAssertEqual(Options!.pointee.bIsCriticalHit, .zero)
                XCTAssertEqual(Options!.pointee.HitBoneId, .zero)
                XCTAssertEqual(Options!.pointee.DamageTaken, .zero)
                XCTAssertEqual(Options!.pointee.HealthRemaining, .zero)
                XCTAssertEqual(Options!.pointee.DamageSource, .zero)
                XCTAssertEqual(Options!.pointee.DamageType, .zero)
                XCTAssertEqual(Options!.pointee.DamageResult, .zero)
                XCTAssertNil(Options!.pointee.PlayerUseWeaponData)
                XCTAssertEqual(Options!.pointee.TimeSincePlayerUseWeaponMs, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerTakeDamage")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerTakeDamage = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LogPlayerTakeDamage(
                VictimPlayerHandle: nil,
                VictimPlayerPosition: nil,
                VictimPlayerViewRotation: nil,
                AttackerPlayerHandle: nil,
                AttackerPlayerPosition: nil,
                AttackerPlayerViewRotation: nil,
                bIsHitscanAttack: false,
                bHasLineOfSight: false,
                bIsCriticalHit: false,
                HitBoneId: .zero,
                DamageTaken: .zero,
                HealthRemaining: .zero,
                DamageSource: .zero,
                DamageType: .zero,
                DamageResult: .zero,
                PlayerUseWeaponData: nil,
                TimeSincePlayerUseWeaponMs: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerTakeDamage"])
        }
    }
}
