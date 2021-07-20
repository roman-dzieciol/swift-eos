import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_ReceiveMessageFromPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_ReceiveMessageFromPeer_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_ReceiveMessageFromPeer = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_RECEIVEMESSAGEFROMPEER_API_LATEST)
                XCTAssertNil(Options!.pointee.PeerHandle)
                XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
                XCTAssertNil(Options!.pointee.Data)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_ReceiveMessageFromPeer")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_ReceiveMessageFromPeer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            try object.ReceiveMessageFromPeer(
                PeerHandle: nil,
                Data: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_ReceiveMessageFromPeer"])
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_ReceiveMessageFromPeer"])
    }
}
