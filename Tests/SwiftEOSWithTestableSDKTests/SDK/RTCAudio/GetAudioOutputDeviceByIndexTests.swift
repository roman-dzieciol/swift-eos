import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioOutputDeviceByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_GetAudioOutputDeviceByIndex = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICEBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.DeviceInfoIndex, .zero)
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_GetAudioOutputDeviceByIndex")
                return nil
            }
            defer { __on_EOS_RTCAudio_GetAudioOutputDeviceByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_RTCAudio_AudioOutputDeviceInfo? = try object.GetAudioOutputDeviceByIndex(DeviceInfoIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDeviceByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDeviceByIndex"])
    }
}
