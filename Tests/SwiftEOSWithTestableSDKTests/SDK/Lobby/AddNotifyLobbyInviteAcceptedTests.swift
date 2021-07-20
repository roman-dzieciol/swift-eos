import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyInviteAcceptedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyInviteAccepted_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyLobbyInviteAccepted = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYINVITEACCEPTED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo(
                            ClientData: ClientData,
                            InviteId: nil,
                            LocalUserId: nil,
                            TargetUserId: nil,
                            LobbyId: nil
                        )))
                GTest.current.sdkReceived.append("EOS_Lobby_AddNotifyLobbyInviteAccepted")
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyLobbyInviteAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteAcceptedCallbackInfo> = try object.AddNotifyLobbyInviteAccepted(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.InviteId)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertNil(arg0.LobbyId)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyInviteAccepted"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyLobbyInviteAccepted = { Handle, InId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                    GTest.current.sdkReceived.append("EOS_Lobby_RemoveNotifyLobbyInviteAccepted")
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyLobbyInviteAccepted = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyInviteAccepted", "EOS_Lobby_RemoveNotifyLobbyInviteAccepted"])
    }
}
