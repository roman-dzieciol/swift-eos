import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTCAudio_UpdateReceivingTests: XCTestCase {
    public func testEOS_RTCAudio_UpdateReceiving_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_UpdateReceiving = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTCAudio_UpdateReceiving")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_UPDATERECEIVING_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.ParticipantId)
                XCTAssertEqual(Options!.pointee.bAudioEnabled, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTCAudio_UpdateReceivingCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            ParticipantId: nil,
                            bAudioEnabled: .zero
                        )))
            }
            defer { __on_EOS_RTCAudio_UpdateReceiving = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: nil)
            
            // When SDK function is called
            try object.UpdateReceiving(
                LocalUserId: nil,
                RoomName: nil,
                ParticipantId: nil,
                bAudioEnabled: false,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertNil(arg0.ParticipantId)
                    XCTAssertEqual(arg0.bAudioEnabled, false)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_UpdateReceiving"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAudio_UpdateReceiving"])
    }
}
