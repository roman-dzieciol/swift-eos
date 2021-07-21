import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyUpdateReceived_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyLobbyUpdateReceived = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Lobby_AddNotifyLobbyUpdateReceived")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_ADDNOTIFYLOBBYUPDATERECEIVED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo(
                            ClientData: ClientData,
                            LobbyId: nil
                        )))
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyLobbyUpdateReceived = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo> = try object.AddNotifyLobbyUpdateReceived(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LobbyId)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyUpdateReceived"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyLobbyUpdateReceived = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Lobby_RemoveNotifyLobbyUpdateReceived")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyLobbyUpdateReceived = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyUpdateReceived", "EOS_Lobby_RemoveNotifyLobbyUpdateReceived"])
    }
}
