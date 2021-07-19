import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_AddNotifySessionInviteAcceptedTests: XCTestCase {
    public func testEOS_Sessions_AddNotifySessionInviteAccepted_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_AddNotifySessionInviteAccepted = { Handle, Options, ClientData, NotificationFn in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_Sessions_SessionInviteAcceptedCallbackInfo(
                            ClientData: ClientData,
                            SessionId: nil,
                            LocalUserId: .nonZeroPointer,
                            TargetUserId: .nonZeroPointer,
                            InviteId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Sessions_AddNotifySessionInviteAccepted")
                return .zero
            }
            defer { __on_EOS_Sessions_AddNotifySessionInviteAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
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
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_AddNotifySessionInviteAccepted"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Sessions_RemoveNotifySessionInviteAccepted = { Handle, InId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Sessions_RemoveNotifySessionInviteAccepted")
                }
            }
        }
        
        // Then
        __on_EOS_Sessions_RemoveNotifySessionInviteAccepted = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_AddNotifySessionInviteAccepted", "EOS_Sessions_RemoveNotifySessionInviteAccepted"])
    }
}
