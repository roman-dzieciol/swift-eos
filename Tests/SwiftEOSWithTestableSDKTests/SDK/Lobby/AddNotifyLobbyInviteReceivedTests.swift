import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyInviteReceived_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyLobbyInviteReceived = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Lobby_AddNotifyLobbyInviteReceived")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYINVITERECEIVED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Lobby_LobbyInviteReceivedCallbackInfo(
                            ClientData: ClientData,
                            InviteId: nil,
                            LocalUserId: nil,
                            TargetUserId: nil
                        )))
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyLobbyInviteReceived = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo> = try object.AddNotifyLobbyInviteReceived(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.InviteId)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyInviteReceived"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyLobbyInviteReceived = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Lobby_RemoveNotifyLobbyInviteReceived")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyLobbyInviteReceived = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyInviteReceived", "EOS_Lobby_RemoveNotifyLobbyInviteReceived"])
    }
}
