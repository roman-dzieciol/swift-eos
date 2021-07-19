import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyMemberUpdateReceived_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_AddNotifyLobbyMemberUpdateReceived = { Handle, Options, ClientData, NotificationFn in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo(
                            ClientData: ClientData,
                            LobbyId: TestGlobals.current.pointer(string: .empty),
                            TargetUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Lobby_AddNotifyLobbyMemberUpdateReceived")
                return .zero
            }
            defer { __on_EOS_Lobby_AddNotifyLobbyMemberUpdateReceived = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo> = try object.AddNotifyLobbyMemberUpdateReceived(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LobbyId)
                    XCTAssertNil(arg0.TargetUserId)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyMemberUpdateReceived"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived = { Handle, InId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived")
                }
            }
        }
        
        // Then
        __on_EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_AddNotifyLobbyMemberUpdateReceived", "EOS_Lobby_RemoveNotifyLobbyMemberUpdateReceived"])
    }
}
