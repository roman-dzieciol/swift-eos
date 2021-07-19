import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_UnregisterPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_UnregisterPeer_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_UnregisterPeer = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_UNREGISTERPEER_API_LATEST)
                XCTAssertNil(Options!.pointee.PeerHandle)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_UnregisterPeer")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_UnregisterPeer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.UnregisterPeer(PeerHandle: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_UnregisterPeer"])
        }
    }
}
