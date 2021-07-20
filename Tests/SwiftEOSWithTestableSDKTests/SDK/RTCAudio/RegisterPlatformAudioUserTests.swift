import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_RegisterPlatformAudioUserTests: XCTestCase {
    public func testEOS_RTCAudio_RegisterPlatformAudioUser_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_RegisterPlatformAudioUser = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_REGISTERPLATFORMAUDIOUSER_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_RegisterPlatformAudioUser")
                return .zero
            }
            defer { __on_EOS_RTCAudio_RegisterPlatformAudioUser = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            try object.RegisterPlatformAudioUser(UserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_RegisterPlatformAudioUser"])
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_RegisterPlatformAudioUser"])
    }
}
