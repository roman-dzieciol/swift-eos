import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_AddNotifyLobbyMemberStatusReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyMemberStatusReceived_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyLobbyMemberStatusReceived = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Lobby_AddNotifyLobbyMemberStatusReceived")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYMEMBERSTATUSRECEIVED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo(
                            ClientData: ClientData,
                            LobbyId: nil,
                            TargetUserId: nil,
                            CurrentStatus: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyLobbyMemberStatusReceived = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo> = try object.AddNotifyLobbyMemberStatusReceived(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LobbyId)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertEqual(arg0.CurrentStatus, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyMemberStatusReceived"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyMemberStatusReceived", "EOS_Lobby_RemoveNotifyLobbyMemberStatusReceived"])
    }
}
