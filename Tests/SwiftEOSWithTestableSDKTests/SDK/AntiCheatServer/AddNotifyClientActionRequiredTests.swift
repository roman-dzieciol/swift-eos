import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredTests: XCTestCase {
    public func testEOS_AntiCheatServer_AddNotifyClientActionRequired_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_AddNotifyClientActionRequired = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATSERVER_ADDNOTIFYCLIENTACTIONREQUIRED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: nil,
                            ClientAction: .zero,
                            ActionReasonCode: .zero,
                            ActionReasonDetailsString: nil
                        )))
                GTest.current.sdkReceived.append("EOS_AntiCheatServer_AddNotifyClientActionRequired")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_AddNotifyClientActionRequired = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> = try object.AddNotifyClientActionRequired(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.ClientHandle)
                    XCTAssertEqual(arg0.ClientAction, .zero)
                    XCTAssertEqual(arg0.ActionReasonCode, .zero)
                    XCTAssertNil(arg0.ActionReasonDetailsString)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyClientActionRequired"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatServer_RemoveNotifyClientActionRequired = { Handle, NotificationId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                    GTest.current.sdkReceived.append("EOS_AntiCheatServer_RemoveNotifyClientActionRequired")
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatServer_RemoveNotifyClientActionRequired = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyClientActionRequired", "EOS_AntiCheatServer_RemoveNotifyClientActionRequired"])
    }
}
