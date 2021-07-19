import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_AddNotifyLoginStatusChangedTests: XCTestCase {
    public func testEOS_Auth_AddNotifyLoginStatusChanged_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotification = expectation(description: "waitForNotification")
            
            // Given implementation for SDK function
            __on_EOS_Auth_AddNotifyLoginStatusChanged = { Handle, Options, ClientData, Notification in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNotNil(ClientData)
                Notification?(TestGlobals.current.pointer(object: _tagEOS_Auth_LoginStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            PrevStatus: .zero,
                            CurrentStatus: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Auth_AddNotifyLoginStatusChanged")
                return .zero
            }
            defer { __on_EOS_Auth_AddNotifyLoginStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Auth_LoginStatusChangedCallbackInfo> = try object.AddNotifyLoginStatusChanged(Notification: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.PrevStatus, .zero)
                    XCTAssertEqual(arg0.CurrentStatus, .zero)
                    waitForNotification.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_AddNotifyLoginStatusChanged"])
                wait(for: [waitForNotification], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Auth_RemoveNotifyLoginStatusChanged = { Handle, InId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Auth_RemoveNotifyLoginStatusChanged")
                }
            }
        }
        
        // Then
        __on_EOS_Auth_RemoveNotifyLoginStatusChanged = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_AddNotifyLoginStatusChanged", "EOS_Auth_RemoveNotifyLoginStatusChanged"])
    }
}
