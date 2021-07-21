import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_UnregisterPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_UnregisterPeer_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_UnregisterPeer = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_UnregisterPeer")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_UNREGISTERPEER_API_LATEST)
                XCTAssertNil(Options!.pointee.PeerHandle)
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_UnregisterPeer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            try object.UnregisterPeer(PeerHandle: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_UnregisterPeer"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_UnregisterPeer"])
    }
}
