import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerUseWeaponTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerUseWeapon_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerUseWeapon = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.UseWeaponData)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerUseWeapon")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerUseWeapon = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LogPlayerUseWeapon(UseWeaponData: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerUseWeapon"])
        }
    }
}
