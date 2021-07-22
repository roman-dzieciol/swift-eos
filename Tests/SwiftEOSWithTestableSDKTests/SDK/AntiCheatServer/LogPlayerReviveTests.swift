import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatServer_LogPlayerReviveTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerRevive_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerRevive = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerRevive")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERREVIVE_API_LATEST)
                XCTAssertNil(Options!.pointee.RevivedPlayerHandle)
                XCTAssertNil(Options!.pointee.ReviverPlayerHandle)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerRevive = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.LogPlayerRevive(
                RevivedPlayerHandle: nil,
                ReviverPlayerHandle: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerRevive"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerRevive"])
    }
}
