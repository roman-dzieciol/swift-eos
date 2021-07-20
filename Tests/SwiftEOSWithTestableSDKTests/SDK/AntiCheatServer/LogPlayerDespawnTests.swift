import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerDespawnTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerDespawn_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerDespawn = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERDESPAWN_API_LATEST)
                XCTAssertNil(Options!.pointee.DespawnedPlayerHandle)
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerDespawn")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerDespawn = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.LogPlayerDespawn(DespawnedPlayerHandle: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerDespawn"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerDespawn"])
    }
}
