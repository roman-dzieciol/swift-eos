import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedTests: XCTestCase {
    public func testEOS_UI_AddNotifyDisplaySettingsUpdated_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_UI_AddNotifyDisplaySettingsUpdated = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_UI_ADDNOTIFYDISPLAYSETTINGSUPDATED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_UI_OnDisplaySettingsUpdatedCallbackInfo(
                            ClientData: ClientData,
                            bIsVisible: .zero,
                            bIsExclusiveInput: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_UI_AddNotifyDisplaySettingsUpdated")
                return .zero
            }
            defer { __on_EOS_UI_AddNotifyDisplaySettingsUpdated = nil }
            
            // Given Actor
            let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo> = try object.AddNotifyDisplaySettingsUpdated(NotificationFn: { arg0 in
                    XCTAssertEqual(arg0.bIsVisible, false)
                    XCTAssertEqual(arg0.bIsExclusiveInput, false)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_AddNotifyDisplaySettingsUpdated"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_UI_RemoveNotifyDisplaySettingsUpdated = { Handle, Id in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(Id, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_UI_RemoveNotifyDisplaySettingsUpdated")
                }
            }
        }
        
        // Then
        __on_EOS_UI_RemoveNotifyDisplaySettingsUpdated = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UI_AddNotifyDisplaySettingsUpdated", "EOS_UI_RemoveNotifyDisplaySettingsUpdated"])
    }
}
