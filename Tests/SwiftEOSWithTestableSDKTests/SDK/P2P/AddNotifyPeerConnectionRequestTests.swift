import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AddNotifyPeerConnectionRequestTests: XCTestCase {
    public func testEOS_P2P_AddNotifyPeerConnectionRequest_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForConnectionRequestHandler = expectation(description: "waitForConnectionRequestHandler")
            
            // Given implementation for SDK function
            __on_EOS_P2P_AddNotifyPeerConnectionRequest = { Handle, Options, ClientData, ConnectionRequestHandler in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.SocketId)
                XCTAssertNotNil(ClientData)
                ConnectionRequestHandler?(TestGlobals.current.pointer(object: _tagEOS_P2P_OnIncomingConnectionRequestInfo(
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            RemoteUserId: .nonZeroPointer,
                            SocketId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_P2P_AddNotifyPeerConnectionRequest")
                return .zero
            }
            defer { __on_EOS_P2P_AddNotifyPeerConnectionRequest = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingConnectionRequestInfo> = try object.AddNotifyPeerConnectionRequest(
                LocalUserId: nil,
                SocketId: nil,
                ConnectionRequestHandler: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RemoteUserId)
                    XCTAssertNil(arg0.SocketId)
                    waitForConnectionRequestHandler.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionRequest"])
                wait(for: [waitForConnectionRequestHandler], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_P2P_RemoveNotifyPeerConnectionRequest = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_P2P_RemoveNotifyPeerConnectionRequest")
                }
            }
        }
        
        // Then
        __on_EOS_P2P_RemoveNotifyPeerConnectionRequest = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionRequest", "EOS_P2P_RemoveNotifyPeerConnectionRequest"])
    }
}
