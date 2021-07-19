import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged = { Handle, Options, ClientData, NotificationFn in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_ADDNOTIFYPEERAUTHSTATUSCHANGED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: .nonZeroPointer,
                            ClientAuthStatus: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> = try object.AddNotifyPeerAuthStatusChanged(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.ClientHandle)
                    XCTAssertEqual(arg0.ClientAuthStatus, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged")
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged", "EOS_AntiCheatClient_RemoveNotifyPeerAuthStatusChanged"])
    }
}
