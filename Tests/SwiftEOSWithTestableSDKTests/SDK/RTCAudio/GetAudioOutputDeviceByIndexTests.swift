import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioOutputDeviceByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_GetAudioOutputDeviceByIndex = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_RTCAudio_GetAudioOutputDeviceByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.DeviceInfoIndex, .zero)
                return nil
            }
            defer { __on_EOS_RTCAudio_GetAudioOutputDeviceByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_RTCAudio_AudioOutputDeviceInfo? = try object.GetAudioOutputDeviceByIndex(DeviceInfoIndex: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDeviceByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDeviceByIndex"])
    }
}
