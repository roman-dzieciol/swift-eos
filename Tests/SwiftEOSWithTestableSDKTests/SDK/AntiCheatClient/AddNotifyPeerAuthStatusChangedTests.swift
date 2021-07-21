import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_ADDNOTIFYPEERAUTHSTATUSCHANGED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: nil,
                            ClientAuthStatus: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> = try object.AddNotifyPeerAuthStatusChanged(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.ClientHandle)
                    XCTAssertEqual(arg0.ClientAuthStatus, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged", "EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged"])
    }
}
