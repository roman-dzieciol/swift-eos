import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_SetAudioOutputSettingsTests: XCTestCase {
    public func testEOS_RTCAudio_SetAudioOutputSettings_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_SetAudioOutputSettings = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_RTCAudio_SetAudioOutputSettings")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_SETAUDIOOUTPUTSETTINGS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.DeviceId)
                XCTAssertEqual(Options!.pointee.Volume, .zero)
                return .zero
            }
            defer { __on_EOS_RTCAudio_SetAudioOutputSettings = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetAudioOutputSettings(
                LocalUserId: nil,
                DeviceId: nil,
                Volume: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_SetAudioOutputSettings"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_SetAudioOutputSettings"])
    }
}
