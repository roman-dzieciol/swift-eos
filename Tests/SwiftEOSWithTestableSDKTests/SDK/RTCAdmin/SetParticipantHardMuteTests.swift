import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTCAdmin_SetParticipantHardMuteTests: XCTestCase {
    public func testEOS_RTCAdmin_SetParticipantHardMute_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_SetParticipantHardMute = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTCAdmin_SetParticipantHardMute")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_SETPARTICIPANTHARDMUTE_API_LATEST)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.bMute, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
            }
            defer { __on_EOS_RTCAdmin_SetParticipantHardMute = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetParticipantHardMute(
                RoomName: nil,
                TargetUserId: nil,
                bMute: false,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_SetParticipantHardMute"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_SetParticipantHardMute"])
    }
}
