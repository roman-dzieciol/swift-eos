import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioInputDeviceByIndexTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioInputDeviceByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_GetAudioInputDeviceByIndex = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_GETAUDIOINPUTDEVICEBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.DeviceInfoIndex, .zero)
                GTest.current.sdkReceived.append("EOS_RTCAudio_GetAudioInputDeviceByIndex")
                return nil
            }
            defer { __on_EOS_RTCAudio_GetAudioInputDeviceByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_RTCAudio_AudioInputDeviceInfo? = try object.GetAudioInputDeviceByIndex(DeviceInfoIndex: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_GetAudioInputDeviceByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_GetAudioInputDeviceByIndex"])
    }
}
