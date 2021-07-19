import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyInviteAcceptedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyInviteAccepted_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyLobbyInviteAccepted = { Handle, Options, ClientData, NotificationFn in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYINVITEACCEPTED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_Lobby_LobbyInviteAcceptedCallbackInfo(
                            ClientData: ClientData,
                            InviteId: nil,
                            LocalUserId: .nonZeroPointer,
                            TargetUserId: .nonZeroPointer,
                            LobbyId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Lobby_AddNotifyLobbyInviteAccepted")
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyLobbyInviteAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
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
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyInviteAccepted"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyLobbyInviteAccepted = { Handle, InId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Lobby_RemoveNotifyLobbyInviteAccepted")
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyLobbyInviteAccepted = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyInviteAccepted", "EOS_Lobby_RemoveNotifyLobbyInviteAccepted"])
    }
}
