import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyRTCRoomConnectionChangedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyRTCRoomConnectionChanged_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyRTCRoomConnectionChanged = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYRTCROOMCONNECTIONCHANGED_API_LATEST)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo(
                            ClientData: ClientData,
                            LobbyId: nil,
                            LocalUserId: nil,
                            bIsConnected: .zero,
                            DisconnectReason: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Lobby_AddNotifyRTCRoomConnectionChanged")
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyRTCRoomConnectionChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo> = try object.AddNotifyRTCRoomConnectionChanged(
                LobbyId: nil,
                LocalUserId: nil,
                NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LobbyId)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.bIsConnected, false)
                    XCTAssertEqual(arg0.DisconnectReason, .zero)
                    waitForNotificationFn.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_AddNotifyRTCRoomConnectionChanged"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged = { Handle, InId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged")
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_AddNotifyRTCRoomConnectionChanged", "EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged"])
    }
}
