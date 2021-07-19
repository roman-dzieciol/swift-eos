import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredTests: XCTestCase {
    public func testEOS_AntiCheatServer_AddNotifyClientActionRequired_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_AddNotifyClientActionRequired = { Handle, Options, ClientData, NotificationFn in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo(
                            ClientData: ClientData,
                            ClientHandle: .nonZeroPointer,
                            ClientAction: .zero,
                            ActionReasonCode: .zero,
                            ActionReasonDetailsString: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_AddNotifyClientActionRequired")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_AddNotifyClientActionRequired = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
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
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyClientActionRequired"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_AntiCheatServer_RemoveNotifyClientActionRequired = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_RemoveNotifyClientActionRequired")
                }
            }
        }
        
        // Then
        __on_EOS_AntiCheatServer_RemoveNotifyClientActionRequired = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_AddNotifyClientActionRequired", "EOS_AntiCheatServer_RemoveNotifyClientActionRequired"])
    }
}
