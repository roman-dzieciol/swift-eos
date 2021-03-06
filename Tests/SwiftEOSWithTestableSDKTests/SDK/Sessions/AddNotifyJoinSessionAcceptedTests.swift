import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedTests: XCTestCase {
    public func testEOS_Sessions_AddNotifyJoinSessionAccepted_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_AddNotifyJoinSessionAccepted = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Sessions_AddNotifyJoinSessionAccepted")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Sessions_JoinSessionAcceptedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            UiEventId: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_Sessions_AddNotifyJoinSessionAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo> = try object.AddNotifyJoinSessionAccepted(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.UiEventId, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_AddNotifyJoinSessionAccepted"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Sessions_RemoveNotifyJoinSessionAccepted = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Sessions_RemoveNotifyJoinSessionAccepted")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Sessions_RemoveNotifyJoinSessionAccepted = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_AddNotifyJoinSessionAccepted", "EOS_Sessions_RemoveNotifyJoinSessionAccepted"])
    }
}
