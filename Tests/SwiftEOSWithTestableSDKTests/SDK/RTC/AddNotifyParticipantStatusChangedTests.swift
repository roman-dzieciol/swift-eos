import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_AddNotifyParticipantStatusChangedTests: XCTestCase {
    public func testEOS_RTC_AddNotifyParticipantStatusChanged_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTC_AddNotifyParticipantStatusChanged = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTC_ParticipantStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            RoomName: nil,
                            ParticipantId: .nonZeroPointer,
                            ParticipantStatus: .zero,
                            ParticipantMetadataCount: .zero,
                            ParticipantMetadata: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTC_AddNotifyParticipantStatusChanged")
                return .zero
            }
            defer { __on_EOS_RTC_AddNotifyParticipantStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTC_ParticipantStatusChangedCallbackInfo> = try object.AddNotifyParticipantStatusChanged(
                LocalUserId: nil,
                RoomName: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertNil(arg0.ParticipantId)
                    XCTAssertEqual(arg0.ParticipantStatus, .zero)
                    XCTAssertNil(arg0.ParticipantMetadata)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTC_AddNotifyParticipantStatusChanged"])
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTC_RemoveNotifyParticipantStatusChanged = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_RTC_RemoveNotifyParticipantStatusChanged")
                }
            }
        }
        
        // Then
        __on_EOS_RTC_RemoveNotifyParticipantStatusChanged = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTC_AddNotifyParticipantStatusChanged", "EOS_RTC_RemoveNotifyParticipantStatusChanged"])
    }
}
