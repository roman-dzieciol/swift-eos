import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddNotifyMessageToServerTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyMessageToServer_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_AddNotifyMessageToServer = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_AddNotifyMessageToServer")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOSERVER_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo(
                            ClientData: ClientData,
                            MessageData: nil,
                            MessageDataSizeBytes: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_AddNotifyMessageToServer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo> = try object.AddNotifyMessageToServer(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.MessageData)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyMessageToServer"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatClient_RemoveNotifyMessageToServer = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_AntiCheatClient_RemoveNotifyMessageToServer")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatClient_RemoveNotifyMessageToServer = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyMessageToServer", "EOS_AntiCheatClient_RemoveNotifyMessageToServer"])
    }
}
