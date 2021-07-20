import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_AddNotifySessionInviteAcceptedTests: XCTestCase {
    public func testEOS_Sessions_AddNotifySessionInviteAccepted_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_AddNotifySessionInviteAccepted = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_ADDNOTIFYSESSIONINVITEACCEPTED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Sessions_SessionInviteAcceptedCallbackInfo(
                            ClientData: ClientData,
                            SessionId: nil,
                            LocalUserId: nil,
                            TargetUserId: nil,
                            InviteId: nil
                        )))
                GTest.current.sdkReceived.append("EOS_Sessions_AddNotifySessionInviteAccepted")
                return .zero
            }
            defer { __on_EOS_Sessions_AddNotifySessionInviteAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteAcceptedCallbackInfo> = try object.AddNotifySessionInviteAccepted(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.SessionId)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertNil(arg0.InviteId)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_AddNotifySessionInviteAccepted"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Sessions_RemoveNotifySessionInviteAccepted = { Handle, InId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                    GTest.current.sdkReceived.append("EOS_Sessions_RemoveNotifySessionInviteAccepted")
                }
            }
        }
        
        // Then
        __on_EOS_Sessions_RemoveNotifySessionInviteAccepted = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_AddNotifySessionInviteAccepted", "EOS_Sessions_RemoveNotifySessionInviteAccepted"])
    }
}
