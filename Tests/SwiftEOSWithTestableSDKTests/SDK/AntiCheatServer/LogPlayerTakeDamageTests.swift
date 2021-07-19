import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerTakeDamageTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerTakeDamage_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogPlayerTakeDamage = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
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
            XCTAssertEqual(Options!.pointee.DamageSource, .init(rawValue: .zero)!)
            XCTAssertEqual(Options!.pointee.DamageType, .init(rawValue: .zero)!)
            XCTAssertEqual(Options!.pointee.DamageResult, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.PlayerUseWeaponData)
            XCTAssertEqual(Options!.pointee.TimeSincePlayerUseWeaponMs, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogPlayerTakeDamage")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
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
            DamageSource: .init(rawValue: .zero)!,
            DamageType: .init(rawValue: .zero)!,
            DamageResult: .init(rawValue: .zero)!,
            PlayerUseWeaponData: nil,
            TimeSincePlayerUseWeaponMs: .zero
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogPlayerTakeDamage"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
