import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_UpdateSendingTests: XCTestCase {
    public func testEOS_RTCAudio_UpdateSending_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAudio_UpdateSending = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCAUDIO_UPDATESENDING_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertEqual(Options!.pointee.AudioStatus, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTCAudio_UpdateSendingCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            AudioStatus: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTCAudio_UpdateSending")
            }
            defer { __on_EOS_RTCAudio_UpdateSending = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.UpdateSending(
                LocalUserId: nil,
                RoomName: nil,
                AudioStatus: .zero,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertEqual(arg0.AudioStatus, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTCAudio_UpdateSending"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
