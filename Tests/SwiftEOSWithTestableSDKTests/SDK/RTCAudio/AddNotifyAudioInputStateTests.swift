import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyAudioInputStateTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioInputState_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_AddNotifyAudioInputState = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_ADDNOTIFYAUDIOINPUTSTATE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTCAudio_AudioInputStateCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            Status: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioInputState")
                return .zero
            }
            defer { __on_EOS_RTCAudio_AddNotifyAudioInputState = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioInputStateCallbackInfo> = try object.AddNotifyAudioInputState(
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
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioInputState"])
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTCAudio_RemoveNotifyAudioInputState = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_RTCAudio_RemoveNotifyAudioInputState")
                }
            }
        }
        
        // Then
        __on_EOS_RTCAudio_RemoveNotifyAudioInputState = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioInputState", "EOS_RTCAudio_RemoveNotifyAudioInputState"])
    }
}
