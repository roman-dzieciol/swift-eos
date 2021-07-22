import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTCAudio_SendAudioTests: XCTestCase {
    public func testEOS_RTCAudio_SendAudio_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_SendAudio = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_RTCAudio_SendAudio")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_SENDAUDIO_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.Buffer)
                return .zero
            }
            defer { __on_EOS_RTCAudio_SendAudio = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SendAudio(
                LocalUserId: nil,
                RoomName: nil,
                Buffer: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_SendAudio"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_SendAudio"])
    }
}
