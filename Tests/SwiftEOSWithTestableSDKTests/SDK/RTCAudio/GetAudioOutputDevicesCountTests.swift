import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioOutputDevicesCountTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioOutputDevicesCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_GetAudioOutputDevicesCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_GETAUDIOOUTPUTDEVICESCOUNT_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_GetAudioOutputDevicesCount")
                return .zero
            }
            defer { __on_EOS_RTCAudio_GetAudioOutputDevicesCount = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetAudioOutputDevicesCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDevicesCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
