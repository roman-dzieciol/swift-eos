import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTC_AddNotifyParticipantStatusChangedTests: XCTestCase {
    public func testEOS_RTC_AddNotifyParticipantStatusChanged_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTC_AddNotifyParticipantStatusChanged = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTC_AddNotifyParticipantStatusChanged")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTC_ADDNOTIFYPARTICIPANTSTATUSCHANGED_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTC_ParticipantStatusChangedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            ParticipantId: nil,
                            ParticipantStatus: .zero,
                            ParticipantMetadataCount: .zero,
                            ParticipantMetadata: nil
                        )))
                return .zero
            }
            defer { __on_EOS_RTC_AddNotifyParticipantStatusChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: nil)
            
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
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTC_AddNotifyParticipantStatusChanged"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTC_RemoveNotifyParticipantStatusChanged = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_RTC_RemoveNotifyParticipantStatusChanged")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_RTC_RemoveNotifyParticipantStatusChanged = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTC_AddNotifyParticipantStatusChanged", "EOS_RTC_RemoveNotifyParticipantStatusChanged"])
    }
}
