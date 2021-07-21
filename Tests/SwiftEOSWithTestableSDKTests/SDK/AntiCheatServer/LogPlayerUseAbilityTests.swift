import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerUseAbilityTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerUseAbility_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerUseAbility = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerUseAbility")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERUSEABILITY_API_LATEST)
                XCTAssertNil(Options!.pointee.PlayerHandle)
                XCTAssertEqual(Options!.pointee.AbilityId, .zero)
                XCTAssertEqual(Options!.pointee.AbilityDurationMs, .zero)
                XCTAssertEqual(Options!.pointee.AbilityCooldownMs, .zero)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerUseAbility = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.LogPlayerUseAbility(
                PlayerHandle: nil,
                AbilityId: .zero,
                AbilityDurationMs: .zero,
                AbilityCooldownMs: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerUseAbility"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerUseAbility"])
    }
}
