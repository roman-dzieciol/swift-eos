import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTCAudio_AddNotifyAudioBeforeSendTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioBeforeSend_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_AddNotifyAudioBeforeSend = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioBeforeSend")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_ADDNOTIFYAUDIOBEFORESEND_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTCAudio_AudioBeforeSendCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            Buffer: nil
                        )))
                return .zero
            }
            defer { __on_EOS_RTCAudio_AddNotifyAudioBeforeSend = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioBeforeSendCallbackInfo> = try object.AddNotifyAudioBeforeSend(
                LocalUserId: nil,
                RoomName: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertNil(arg0.Buffer)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioBeforeSend"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTCAudio_RemoveNotifyAudioBeforeSend = { Handle, NotificationId in
                    GTest.current.sdkReceived.append("EOS_RTCAudio_RemoveNotifyAudioBeforeSend")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_RTCAudio_RemoveNotifyAudioBeforeSend = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioBeforeSend", "EOS_RTCAudio_RemoveNotifyAudioBeforeSend"])
    }
}
