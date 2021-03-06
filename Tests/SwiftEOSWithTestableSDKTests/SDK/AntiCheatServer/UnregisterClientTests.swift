import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatServer_UnregisterClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_UnregisterClient_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_UnregisterClient = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_UnregisterClient")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_UNREGISTERCLIENT_API_LATEST)
                XCTAssertNil(Options!.pointee.ClientHandle)
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_UnregisterClient = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.UnregisterClient(ClientHandle: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_UnregisterClient"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_UnregisterClient"])
    }
}
