import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTCAudio_AddNotifyAudioOutputStateTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioOutputState_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_AddNotifyAudioOutputState = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioOutputState")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_ADDNOTIFYAUDIOOUTPUTSTATE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTCAudio_AudioOutputStateCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            Status: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_RTCAudio_AddNotifyAudioOutputState = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioOutputStateCallbackInfo> = try object.AddNotifyAudioOutputState(
                LocalUserId: nil,
                RoomName: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertEqual(arg0.Status, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioOutputState"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTCAudio_RemoveNotifyAudioOutputState = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_RTCAudio_RemoveNotifyAudioOutputState")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_RTCAudio_RemoveNotifyAudioOutputState = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioOutputState", "EOS_RTCAudio_RemoveNotifyAudioOutputState"])
    }
}
