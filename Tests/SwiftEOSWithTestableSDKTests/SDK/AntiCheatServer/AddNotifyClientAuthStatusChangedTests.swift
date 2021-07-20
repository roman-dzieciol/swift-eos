import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_AddNotifyClientAuthStatusChangedTests: XCTestCase {
    public func testEOS_AntiCheatServer_AddNotifyClientAuthStatusChanged_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_ADDNOTIFYCLIENTAUTHSTATUSCHANGED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: nil,
                            ClientAuthStatus: .zero
                        )))
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> = try object.AddNotifyClientAuthStatusChanged(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.ClientHandle)
                    XCTAssertEqual(arg0.ClientAuthStatus, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged = { Handle, NotificationId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                    GTest.current.sdkReceived.append("EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged")
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyClientAuthStatusChanged", "EOS_AntiCheatServer_RemoveNotifyClientAuthStatusChanged"])
    }
}
