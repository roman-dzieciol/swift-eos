import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_AddNotifyJoinLobbyAcceptedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyJoinLobbyAccepted_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyJoinLobbyAccepted = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Lobby_AddNotifyJoinLobbyAccepted")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYJOINLOBBYACCEPTED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            UiEventId: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyJoinLobbyAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo> = try object.AddNotifyJoinLobbyAccepted(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.UiEventId, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyJoinLobbyAccepted"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyJoinLobbyAccepted = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Lobby_RemoveNotifyJoinLobbyAccepted")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyJoinLobbyAccepted = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyJoinLobbyAccepted", "EOS_Lobby_RemoveNotifyJoinLobbyAccepted"])
    }
}
