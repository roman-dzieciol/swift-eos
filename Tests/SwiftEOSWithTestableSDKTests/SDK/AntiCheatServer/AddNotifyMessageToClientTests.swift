import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_AddNotifyMessageToClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_AddNotifyMessageToClient_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_AddNotifyMessageToClient = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_ADDNOTIFYMESSAGETOCLIENT_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: nil,
                            MessageData: nil,
                            MessageDataSizeBytes: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_AddNotifyMessageToClient")
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
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyMessageToClient"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatServer_RemoveNotifyMessageToClient = { Handle, NotificationId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_RemoveNotifyMessageToClient")
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatServer_RemoveNotifyMessageToClient = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyMessageToClient", "EOS_AntiCheatServer_RemoveNotifyMessageToClient"])
    }
}
