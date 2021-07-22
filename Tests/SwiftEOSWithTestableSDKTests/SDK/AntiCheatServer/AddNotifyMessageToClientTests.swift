import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_AntiCheatServer_AddNotifyMessageToClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_AddNotifyMessageToClient_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_AddNotifyMessageToClient = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_AddNotifyMessageToClient")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: nil,
                            MessageData: nil,
                            MessageDataSizeBytes: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_AddNotifyMessageToClient = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> = try object.AddNotifyMessageToClient(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.ClientHandle)
                    XCTAssertNil(arg0.MessageData)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyMessageToClient"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatServer_RemoveNotifyMessageToClient = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_AntiCheatServer_RemoveNotifyMessageToClient")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatServer_RemoveNotifyMessageToClient = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyMessageToClient", "EOS_AntiCheatServer_RemoveNotifyMessageToClient"])
    }
}
