import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerUseAbilityTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerUseAbility_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogPlayerUseAbility = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.PlayerHandle)
            XCTAssertEqual(Options!.pointee.AbilityId, .zero)
            XCTAssertEqual(Options!.pointee.AbilityDurationMs, .zero)
            XCTAssertEqual(Options!.pointee.AbilityCooldownMs, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogPlayerUseAbility")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogPlayerUseAbility(
            PlayerHandle: nil,
            AbilityId: .zero,
            AbilityDurationMs: .zero,
            AbilityCooldownMs: .zero
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogPlayerUseAbility"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
