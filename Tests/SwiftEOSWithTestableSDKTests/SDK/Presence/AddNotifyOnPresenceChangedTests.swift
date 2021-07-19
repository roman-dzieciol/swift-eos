import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_AddNotifyOnPresenceChangedTests: XCTestCase {
    public func testEOS_Presence_AddNotifyOnPresenceChanged_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationHandler = expectation(description: "waitForNotificationHandler")
            
            // Given implementation for SDK function
            __on_EOS_Presence_AddNotifyOnPresenceChanged = { Handle, Options, ClientData, NotificationHandler in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCE_ADDNOTIFYONPRESENCECHANGED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationHandler?(TestGlobals.current.pointer(object: _tagEOS_Presence_PresenceChangedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            PresenceUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Presence_AddNotifyOnPresenceChanged")
                return .zero
            }
            defer { __on_EOS_Presence_AddNotifyOnPresenceChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Presence_PresenceChangedCallbackInfo> = try object.AddNotifyOnPresenceChanged(NotificationHandler: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.PresenceUserId)
                    waitForNotificationHandler.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_AddNotifyOnPresenceChanged"])
                wait(for: [waitForNotificationHandler], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Presence_RemoveNotifyOnPresenceChanged = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Presence_RemoveNotifyOnPresenceChanged")
                }
            }
        }
        
        // Then
        __on_EOS_Presence_RemoveNotifyOnPresenceChanged = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_AddNotifyOnPresenceChanged", "EOS_Presence_RemoveNotifyOnPresenceChanged"])
    }
}
