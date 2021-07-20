import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_AddNotifyDisconnectedTests: XCTestCase {
    public func testEOS_RTC_AddNotifyDisconnected_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTC_AddNotifyDisconnected = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTC_ADDNOTIFYDISCONNECTED_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTC_DisconnectedCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTC_AddNotifyDisconnected")
                return .zero
            }
            defer { __on_EOS_RTC_AddNotifyDisconnected = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTC_DisconnectedCallbackInfo> = try object.AddNotifyDisconnected(
                LocalUserId: nil,
                RoomName: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTC_AddNotifyDisconnected"])
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTC_RemoveNotifyDisconnected = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_RTC_RemoveNotifyDisconnected")
                }
            }
        }
        
        // Then
        __on_EOS_RTC_RemoveNotifyDisconnected = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTC_AddNotifyDisconnected", "EOS_RTC_RemoveNotifyDisconnected"])
    }
}
