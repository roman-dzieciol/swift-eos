import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerReviveTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerRevive_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerRevive = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERREVIVE_API_LATEST)
                XCTAssertNil(Options!.pointee.RevivedPlayerHandle)
                XCTAssertNil(Options!.pointee.ReviverPlayerHandle)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerRevive")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerRevive = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LogPlayerRevive(
                RevivedPlayerHandle: nil,
                ReviverPlayerHandle: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerRevive"])
        }
    }
}
