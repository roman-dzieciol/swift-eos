import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatClient_AddNotifyMessageToPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyMessageToPeer_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_AddNotifyMessageToPeer = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_AddNotifyMessageToPeer")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_ADDNOTIFYMESSAGETOPEER_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: nil,
                            MessageData: nil,
                            MessageDataSizeBytes: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_AddNotifyMessageToPeer = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> = try object.AddNotifyMessageToPeer(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.ClientHandle)
                    XCTAssertNil(arg0.MessageData)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyMessageToPeer"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatClient_RemoveNotifyMessageToPeer = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_AntiCheatClient_RemoveNotifyMessageToPeer")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatClient_RemoveNotifyMessageToPeer = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyMessageToPeer", "EOS_AntiCheatClient_RemoveNotifyMessageToPeer"])
    }
}
