import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_BeginSessionTests: XCTestCase {
    public func testEOS_AntiCheatServer_BeginSession_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_BeginSession = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_BeginSession")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_BEGINSESSION_API_LATEST)
                XCTAssertEqual(Options!.pointee.RegisterTimeoutSeconds, .zero)
                XCTAssertNil(Options!.pointee.ServerName)
                XCTAssertEqual(Options!.pointee.bEnableGameplayData, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_BeginSession = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.BeginSession(
                RegisterTimeoutSeconds: .zero,
                ServerName: nil,
                bEnableGameplayData: false,
                LocalUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_BeginSession"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_BeginSession"])
    }
}
