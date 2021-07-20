import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_KickTests: XCTestCase {
    public func testEOS_RTCAdmin_Kick_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_Kick = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_KICK_API_LATEST)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTCAdmin_KickCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                GTest.current.sdkReceived.append("EOS_RTCAdmin_Kick")
            }
            defer { __on_EOS_RTCAdmin_Kick = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: nil)
            
            // When SDK function is called
            try object.Kick(
                RoomName: nil,
                TargetUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_Kick"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_Kick"])
    }
}
