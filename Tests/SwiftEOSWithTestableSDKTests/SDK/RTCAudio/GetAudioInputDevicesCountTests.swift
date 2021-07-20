import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioInputDevicesCountTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioInputDevicesCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_GetAudioInputDevicesCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_GETAUDIOINPUTDEVICESCOUNT_API_LATEST)
                GTest.current.sdkReceived.append("EOS_RTCAudio_GetAudioInputDevicesCount")
                return .zero
            }
            defer { __on_EOS_RTCAudio_GetAudioInputDevicesCount = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetAudioInputDevicesCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_GetAudioInputDevicesCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_GetAudioInputDevicesCount"])
    }
}
