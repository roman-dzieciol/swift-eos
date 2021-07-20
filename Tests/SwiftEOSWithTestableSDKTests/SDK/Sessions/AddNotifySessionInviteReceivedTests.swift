import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_AddNotifySessionInviteReceivedTests: XCTestCase {
    public func testEOS_Sessions_AddNotifySessionInviteReceived_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_AddNotifySessionInviteReceived = { Handle, Options, ClientData, NotificationFn in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_ADDNOTIFYSESSIONINVITERECEIVED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_Sessions_SessionInviteReceivedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            TargetUserId: nil,
                            InviteId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Sessions_AddNotifySessionInviteReceived")
                return .zero
            }
            defer { __on_EOS_Sessions_AddNotifySessionInviteReceived = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo> = try object.AddNotifySessionInviteReceived(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertNil(arg0.InviteId)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_AddNotifySessionInviteReceived"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Sessions_RemoveNotifySessionInviteReceived = { Handle, InId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Sessions_RemoveNotifySessionInviteReceived")
                }
            }
        }
        
        // Then
        __on_EOS_Sessions_RemoveNotifySessionInviteReceived = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_AddNotifySessionInviteReceived", "EOS_Sessions_RemoveNotifySessionInviteReceived"])
    }
}
