import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_AddNotifyJoinGameAcceptedTests: XCTestCase {
    public func testEOS_Presence_AddNotifyJoinGameAccepted_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Presence_AddNotifyJoinGameAccepted = { Handle, Options, ClientData, NotificationFn in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCE_ADDNOTIFYJOINGAMEACCEPTED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Presence_JoinGameAcceptedCallbackInfo(
                            ClientData: ClientData,
                            JoinInfo: nil,
                            LocalUserId: nil,
                            TargetUserId: nil,
                            UiEventId: .zero
                        )))
                GTest.current.sdkReceived.append("EOS_Presence_AddNotifyJoinGameAccepted")
                return .zero
            }
            defer { __on_EOS_Presence_AddNotifyJoinGameAccepted = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Presence_JoinGameAcceptedCallbackInfo> = try object.AddNotifyJoinGameAccepted(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.JoinInfo)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertEqual(arg0.UiEventId, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Presence_AddNotifyJoinGameAccepted"])
                wait(for: [waitForNotificationFn], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Presence_RemoveNotifyJoinGameAccepted = { Handle, InId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                    GTest.current.sdkReceived.append("EOS_Presence_RemoveNotifyJoinGameAccepted")
                }
            }
        }
        
        // Then
        __on_EOS_Presence_RemoveNotifyJoinGameAccepted = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Presence_AddNotifyJoinGameAccepted", "EOS_Presence_RemoveNotifyJoinGameAccepted"])
    }
}
