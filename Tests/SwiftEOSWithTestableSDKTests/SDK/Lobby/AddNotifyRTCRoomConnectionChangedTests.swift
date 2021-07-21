import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyRTCRoomConnectionChangedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyRTCRoomConnectionChanged_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyRTCRoomConnectionChanged = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Lobby_AddNotifyRTCRoomConnectionChanged")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYRTCROOMCONNECTIONCHANGED_API_LATEST)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo(
                            ClientData: ClientData,
                            LobbyId: nil,
                            LocalUserId: nil,
                            bIsConnected: .zero,
                            DisconnectReason: .zero
                        )))
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
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyRTCRoomConnectionChanged"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyRTCRoomConnectionChanged", "EOS_Lobby_RemoveNotifyRTCRoomConnectionChanged"])
    }
}
