import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AddNotifyPeerConnectionRequestTests: XCTestCase {
    public func testEOS_P2P_AddNotifyPeerConnectionRequest_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForConnectionRequestHandler = expectation(description: "waitForConnectionRequestHandler")
            
            // Given implementation for SDK function
            __on_EOS_P2P_AddNotifyPeerConnectionRequest = { Handle, Options, ClientData, ConnectionRequestHandler in
                GTest.current.sdkReceived.append("EOS_P2P_AddNotifyPeerConnectionRequest")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_ADDNOTIFYPEERCONNECTIONREQUEST_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.SocketId)
                XCTAssertNotNil(ClientData)
                ConnectionRequestHandler?(GTest.current.pointer(object: _tagEOS_P2P_OnIncomingConnectionRequestInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RemoteUserId: nil,
                            SocketId: nil
                        )))
                return .zero
            }
            defer { __on_EOS_P2P_AddNotifyPeerConnectionRequest = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
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
                wait(for: [waitForConnectionRequestHandler], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionRequest"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_P2P_RemoveNotifyPeerConnectionRequest = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_P2P_RemoveNotifyPeerConnectionRequest")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_P2P_RemoveNotifyPeerConnectionRequest = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionRequest", "EOS_P2P_RemoveNotifyPeerConnectionRequest"])
    }
}
