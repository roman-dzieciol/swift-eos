import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerDespawnTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerDespawn_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerDespawn = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.DespawnedPlayerHandle)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerDespawn")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerDespawn = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LogPlayerDespawn(DespawnedPlayerHandle: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerDespawn"])
        }
    }
}
