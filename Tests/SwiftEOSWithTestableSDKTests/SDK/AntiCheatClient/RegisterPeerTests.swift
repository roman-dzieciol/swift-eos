import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatClient_RegisterPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_RegisterPeer_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_RegisterPeer = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_RegisterPeer")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_REGISTERPEER_API_LATEST)
                XCTAssertNil(Options!.pointee.PeerHandle)
                XCTAssertEqual(Options!.pointee.ClientType, .zero)
                XCTAssertEqual(Options!.pointee.ClientPlatform, .zero)
                XCTAssertNil(Options!.pointee.AccountId)
                XCTAssertNil(Options!.pointee.IpAddress)
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_RegisterPeer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            try object.RegisterPeer(
                PeerHandle: nil,
                ClientType: .zero,
                ClientPlatform: .zero,
                AccountId: nil,
                IpAddress: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_RegisterPeer"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_RegisterPeer"])
    }
}
