import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_AddNotifyLoginStatusChangedTests: XCTestCase {
    public func testEOS_Connect_AddNotifyLoginStatusChanged_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotification = expectation(description: "waitForNotification")
            
            // Given implementation for SDK function
            __on_EOS_Connect_AddNotifyLoginStatusChanged = { Handle, Options, ClientData, Notification in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_ADDNOTIFYLOGINSTATUSCHANGED_API_LATEST)
                XCTAssertNotNil(ClientData)
                Notification?(GTest.current.pointer(object: _tagEOS_Connect_LoginStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            PreviousStatus: .zero,
                            CurrentStatus: .zero
                        )))
                GTest.current.sdkReceived.append("EOS_Connect_AddNotifyLoginStatusChanged")
                return .zero
            }
            defer { __on_EOS_Connect_AddNotifyLoginStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Connect_LoginStatusChangedCallbackInfo> = try object.AddNotifyLoginStatusChanged(Notification: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.PreviousStatus, .zero)
                    XCTAssertEqual(arg0.CurrentStatus, .zero)
                    waitForNotification.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_AddNotifyLoginStatusChanged"])
                wait(for: [waitForNotification], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Connect_RemoveNotifyLoginStatusChanged = { Handle, InId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                    GTest.current.sdkReceived.append("EOS_Connect_RemoveNotifyLoginStatusChanged")
                }
            }
        }
        
        // Then
        __on_EOS_Connect_RemoveNotifyLoginStatusChanged = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_AddNotifyLoginStatusChanged", "EOS_Connect_RemoveNotifyLoginStatusChanged"])
    }
}
