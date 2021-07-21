import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyParticipantUpdatedTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyParticipantUpdated_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_AddNotifyParticipantUpdated = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTCAudio_AddNotifyParticipantUpdated")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_ADDNOTIFYPARTICIPANTUPDATED_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTCAudio_ParticipantUpdatedCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            ParticipantId: nil,
                            bSpeaking: .zero,
                            AudioStatus: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_RTCAudio_AddNotifyParticipantUpdated = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_ParticipantUpdatedCallbackInfo> = try object.AddNotifyParticipantUpdated(
                LocalUserId: nil,
                RoomName: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertNil(arg0.ParticipantId)
                    XCTAssertEqual(arg0.bSpeaking, false)
                    XCTAssertEqual(arg0.AudioStatus, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_AddNotifyParticipantUpdated"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTCAudio_RemoveNotifyParticipantUpdated = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_RTCAudio_RemoveNotifyParticipantUpdated")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_RTCAudio_RemoveNotifyParticipantUpdated = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_AddNotifyParticipantUpdated", "EOS_RTCAudio_RemoveNotifyParticipantUpdated"])
    }
}
