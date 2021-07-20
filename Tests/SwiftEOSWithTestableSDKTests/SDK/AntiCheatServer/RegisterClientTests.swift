import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_RegisterClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_RegisterClient_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_RegisterClient = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_REGISTERCLIENT_API_LATEST)
                XCTAssertNil(Options!.pointee.ClientHandle)
                XCTAssertEqual(Options!.pointee.ClientType, .zero)
                XCTAssertEqual(Options!.pointee.ClientPlatform, .zero)
                XCTAssertNil(Options!.pointee.AccountId)
                XCTAssertNil(Options!.pointee.IpAddress)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_RegisterClient")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_RegisterClient = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            try object.RegisterClient(
                ClientHandle: nil,
                ClientType: .zero,
                ClientPlatform: .zero,
                AccountId: nil,
                IpAddress: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_RegisterClient"])
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_RegisterClient"])
    }
}
