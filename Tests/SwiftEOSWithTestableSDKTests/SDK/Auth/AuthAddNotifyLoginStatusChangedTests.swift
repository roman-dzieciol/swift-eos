import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_AddNotifyLoginStatusChangedTests: XCTestCase {
    public func testEOS_Auth_AddNotifyLoginStatusChanged_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotification = expectation(description: "waitForNotification")
            
            // Given implementation for SDK function
            __on_EOS_Auth_AddNotifyLoginStatusChanged = { Handle, Options, ClientData, Notification in
                GTest.current.sdkReceived.append("EOS_Auth_AddNotifyLoginStatusChanged")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_AUTH_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST)
                XCTAssertNotNil(ClientData)
                Notification?(GTest.current.pointer(object: _tagEOS_Auth_LoginStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            PrevStatus: .zero,
                            CurrentStatus: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_Auth_AddNotifyLoginStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Auth_LoginStatusChangedCallbackInfo> = try object.AddNotifyLoginStatusChanged(Notification: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.PrevStatus, .zero)
                    XCTAssertEqual(arg0.CurrentStatus, .zero)
                    waitForNotification.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotification], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_AddNotifyLoginStatusChanged"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Auth_RemoveNotifyLoginStatusChanged = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Auth_RemoveNotifyLoginStatusChanged")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Auth_RemoveNotifyLoginStatusChanged = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_AddNotifyLoginStatusChanged", "EOS_Auth_RemoveNotifyLoginStatusChanged"])
    }
}
