import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_SetParticipantHardMuteTests: XCTestCase {
    public func testEOS_RTCAdmin_SetParticipantHardMute_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_SetParticipantHardMute = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_SETPARTICIPANTHARDMUTE_API_LATEST)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.bMute, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTCAdmin_SetParticipantHardMuteCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTCAdmin_SetParticipantHardMute")
            }
            defer { __on_EOS_RTCAdmin_SetParticipantHardMute = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: .nonZeroPointer)
            
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
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAdmin_SetParticipantHardMute"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
