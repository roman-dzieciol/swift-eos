import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_GetAudioOutputDeviceByIndexTests: XCTestCase {
    public func testEOS_RTCAudio_GetAudioOutputDeviceByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_GetAudioOutputDeviceByIndex = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.DeviceInfoIndex, .zero)
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_GetAudioOutputDeviceByIndex")
                return nil
            }
            defer { __on_EOS_RTCAudio_GetAudioOutputDeviceByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_RTCAudio_AudioOutputDeviceInfo? = try object.GetAudioOutputDeviceByIndex(DeviceInfoIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_GetAudioOutputDeviceByIndex"])
            XCTAssertNil(result)
        }
    }
}
