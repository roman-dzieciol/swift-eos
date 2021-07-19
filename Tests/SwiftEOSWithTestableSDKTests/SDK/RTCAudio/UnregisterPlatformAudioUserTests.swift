import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_UnregisterPlatformAudioUserTests: XCTestCase {
    public func testEOS_RTCAudio_UnregisterPlatformAudioUser_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_UnregisterPlatformAudioUser = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.UserId)
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_UnregisterPlatformAudioUser")
                return .zero
            }
            defer { __on_EOS_RTCAudio_UnregisterPlatformAudioUser = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.UnregisterPlatformAudioUser(UserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_UnregisterPlatformAudioUser"])
        }
    }
}
