import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedTests: XCTestCase {
    public func testEOS_Sessions_AddNotifyJoinSessionAccepted_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_AddNotifyJoinSessionAccepted = { Handle, Options, ClientData, NotificationFn in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_ADDNOTIFYJOINSESSIONACCEPTED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(TestGlobals.current.pointer(object: _tagEOS_Sessions_JoinSessionAcceptedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            UiEventId: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Sessions_AddNotifyJoinSessionAccepted")
                return .zero
            }
            defer { __on_EOS_Sessions_AddNotifyJoinSessionAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo> = try object.AddNotifyJoinSessionAccepted(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.UiEventId, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_AddNotifyJoinSessionAccepted"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Sessions_RemoveNotifyJoinSessionAccepted = { Handle, InId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(InId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Sessions_RemoveNotifyJoinSessionAccepted")
                }
            }
        }
        
        // Then
        __on_EOS_Sessions_RemoveNotifyJoinSessionAccepted = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_AddNotifyJoinSessionAccepted", "EOS_Sessions_RemoveNotifyJoinSessionAccepted"])
    }
}
