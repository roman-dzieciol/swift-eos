import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddNotifyPeerActionRequiredTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyPeerActionRequired_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatClient_AddNotifyPeerActionRequired = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCLIENT_ADDNOTIFYPEERACTIONREQUIRED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: nil,
                            ClientAction: .zero,
                            ActionReasonCode: .zero,
                            ActionReasonDetailsString: nil
                        )))
                GTest.current.sdkReceived.append("EOS_AntiCheatClient_AddNotifyPeerActionRequired")
                return .zero
            }
            defer { __on_EOS_AntiCheatClient_AddNotifyPeerActionRequired = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> = try object.AddNotifyPeerActionRequired(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.ClientHandle)
                    XCTAssertEqual(arg0.ClientAction, .zero)
                    XCTAssertEqual(arg0.ActionReasonCode, .zero)
                    XCTAssertNil(arg0.ActionReasonDetailsString)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyPeerActionRequired"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatClient_RemoveNotifyPeerActionRequired = { Handle, NotificationId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                    GTest.current.sdkReceived.append("EOS_AntiCheatClient_RemoveNotifyPeerActionRequired")
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatClient_RemoveNotifyPeerActionRequired = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatClient_AddNotifyPeerActionRequired", "EOS_AntiCheatClient_RemoveNotifyPeerActionRequired"])
    }
}
