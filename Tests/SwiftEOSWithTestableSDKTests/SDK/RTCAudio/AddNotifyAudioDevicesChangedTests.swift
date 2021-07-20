import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_AddNotifyAudioDevicesChangedTests: XCTestCase {
    public func testEOS_RTCAudio_AddNotifyAudioDevicesChanged_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_AddNotifyAudioDevicesChanged = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_ADDNOTIFYAUDIODEVICESCHANGED_API_LATEST)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTCAudio_AudioDevicesChangedCallbackInfo(ClientData: ClientData)))
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_AddNotifyAudioDevicesChanged")
                return .zero
            }
            defer { __on_EOS_RTCAudio_AddNotifyAudioDevicesChanged = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_RTCAudio_AudioDevicesChangedCallbackInfo> = try object.AddNotifyAudioDevicesChanged(CompletionDelegate: { arg0 in
                    
                    waitForCompletionDelegate.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioDevicesChanged"])
                wait(for: [waitForCompletionDelegate], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_RTCAudio_RemoveNotifyAudioDevicesChanged = { Handle, NotificationId in
                    XCTAssertNil(Handle)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_RTCAudio_RemoveNotifyAudioDevicesChanged")
                }
            }
        }
        
        // Then
        __on_EOS_RTCAudio_RemoveNotifyAudioDevicesChanged = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_AddNotifyAudioDevicesChanged", "EOS_RTCAudio_RemoveNotifyAudioDevicesChanged"])
    }
}
