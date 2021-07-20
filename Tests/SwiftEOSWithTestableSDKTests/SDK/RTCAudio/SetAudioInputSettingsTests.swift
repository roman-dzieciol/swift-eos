import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_SetAudioInputSettingsTests: XCTestCase {
    public func testEOS_RTCAudio_SetAudioInputSettings_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_SetAudioInputSettings = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_SETAUDIOINPUTSETTINGS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.DeviceId)
                XCTAssertEqual(Options!.pointee.Volume, .zero)
                XCTAssertEqual(Options!.pointee.bPlatformAEC, .zero)
                GTest.current.sdkReceived.append("EOS_RTCAudio_SetAudioInputSettings")
                return .zero
            }
            defer { __on_EOS_RTCAudio_SetAudioInputSettings = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetAudioInputSettings(
                LocalUserId: nil,
                DeviceId: nil,
                Volume: .zero,
                bPlatformAEC: false
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_SetAudioInputSettings"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_SetAudioInputSettings"])
    }
}
