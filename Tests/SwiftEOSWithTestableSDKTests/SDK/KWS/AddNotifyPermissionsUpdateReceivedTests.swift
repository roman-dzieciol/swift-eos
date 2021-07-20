import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_AddNotifyPermissionsUpdateReceivedTests: XCTestCase {
    public func testEOS_KWS_AddNotifyPermissionsUpdateReceived_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_KWS_AddNotifyPermissionsUpdateReceived = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_ADDNOTIFYPERMISSIONSUPDATERECEIVED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_KWS_AddNotifyPermissionsUpdateReceived")
                return .zero
            }
            defer { __on_EOS_KWS_AddNotifyPermissionsUpdateReceived = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo> = try object.AddNotifyPermissionsUpdateReceived(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_KWS_AddNotifyPermissionsUpdateReceived"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_KWS_RemoveNotifyPermissionsUpdateReceived = { Handle, InId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_KWS_RemoveNotifyPermissionsUpdateReceived")
                }
            }
        }
        
        // Then
        __on_EOS_KWS_RemoveNotifyPermissionsUpdateReceived = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_KWS_AddNotifyPermissionsUpdateReceived", "EOS_KWS_RemoveNotifyPermissionsUpdateReceived"])
    }
}
