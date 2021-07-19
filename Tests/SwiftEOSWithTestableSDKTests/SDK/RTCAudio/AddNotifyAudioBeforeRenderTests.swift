import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyAudioBeforeRenderTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioBeforeRender_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_AddNotifyAudioBeforeRender = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_ADDNOTIFYAUDIOBEFORERENDER_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertEqual(Options!.pointee.bUnmixedAudio, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTCAudio_AudioBeforeRenderCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            RoomName: nil,
                            Buffer: nil,
                            ParticipantId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioBeforeRender")
                return .zero
            }
            defer { __on_EOS_RTCAudio_AddNotifyAudioBeforeRender = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeRenderCallbackInfo> = try object.AddNotifyAudioBeforeRender(
                LocalUserId: nil,
                RoomName: nil,
                bUnmixedAudio: false,
                CompletionDelegate: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertNil(arg0.Buffer)
                    XCTAssertNil(arg0.ParticipantId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioBeforeRender"])
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTCAudio_RemoveNotifyAudioBeforeRender = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_RTCAudio_RemoveNotifyAudioBeforeRender")
                }
            }
        }
        
        // Then
        __on_EOS_RTCAudio_RemoveNotifyAudioBeforeRender = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioBeforeRender", "EOS_RTCAudio_RemoveNotifyAudioBeforeRender"])
    }
}
