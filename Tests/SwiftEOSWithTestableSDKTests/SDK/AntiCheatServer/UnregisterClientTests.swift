import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_UnregisterClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_UnregisterClient_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_UnregisterClient = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_UNREGISTERCLIENT_API_LATEST)
                XCTAssertNil(Options!.pointee.ClientHandle)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_UnregisterClient")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_UnregisterClient = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.UnregisterClient(ClientHandle: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_UnregisterClient"])
        }
    }
}
