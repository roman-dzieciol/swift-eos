import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatServer_LogPlayerUseWeaponTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerUseWeapon_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerUseWeapon = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerUseWeapon")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERUSEWEAPON_API_LATEST)
                XCTAssertNil(Options!.pointee.UseWeaponData)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerUseWeapon = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.LogPlayerUseWeapon(UseWeaponData: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerUseWeapon"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerUseWeapon"])
    }
}
