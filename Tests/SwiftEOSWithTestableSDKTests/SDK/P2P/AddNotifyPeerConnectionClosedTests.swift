import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AddNotifyPeerConnectionClosedTests: XCTestCase {
    public func testEOS_P2P_AddNotifyPeerConnectionClosed_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForConnectionClosedHandler = expectation(description: "waitForConnectionClosedHandler")
            
            // Given implementation for SDK function
            __on_EOS_P2P_AddNotifyPeerConnectionClosed = { Handle, Options, ClientData, ConnectionClosedHandler in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_ADDNOTIFYPEERCONNECTIONCLOSED_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.SocketId)
                XCTAssertNotNil(ClientData)
                ConnectionClosedHandler?(GTest.current.pointer(object: _tagEOS_P2P_OnRemoteConnectionClosedInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RemoteUserId: nil,
                            SocketId: nil,
                            Reason: .zero
                        )))
                GTest.current.sdkReceived.append("EOS_P2P_AddNotifyPeerConnectionClosed")
                return .zero
            }
            defer { __on_EOS_P2P_AddNotifyPeerConnectionClosed = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_P2P_OnRemoteConnectionClosedInfo> = try object.AddNotifyPeerConnectionClosed(
                LocalUserId: nil,
                SocketId: nil,
                ConnectionClosedHandler: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RemoteUserId)
                    XCTAssertNil(arg0.SocketId)
                    XCTAssertEqual(arg0.Reason, .zero)
                    waitForConnectionClosedHandler.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionClosed"])
                wait(for: [waitForConnectionClosedHandler], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_P2P_RemoveNotifyPeerConnectionClosed = { Handle, NotificationId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                    GTest.current.sdkReceived.append("EOS_P2P_RemoveNotifyPeerConnectionClosed")
                }
            }
        }
        
        // Then
        __on_EOS_P2P_RemoveNotifyPeerConnectionClosed = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionClosed", "EOS_P2P_RemoveNotifyPeerConnectionClosed"])
    }
}
