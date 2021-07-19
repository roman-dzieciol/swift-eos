import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_JoinRoomTests: XCTestCase {
    public func testEOS_RTC_JoinRoom_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTC_JoinRoom = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.ClientBaseUrl)
                XCTAssertNil(Options!.pointee.ParticipantToken)
                XCTAssertNil(Options!.pointee.ParticipantId)
                XCTAssertEqual(Options!.pointee.Flags, .zero)
                XCTAssertEqual(Options!.pointee.bManualAudioInputEnabled, .zero)
                XCTAssertEqual(Options!.pointee.bManualAudioOutputEnabled, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTC_JoinRoomCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            RoomName: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTC_JoinRoom")
            }
            defer { __on_EOS_RTC_JoinRoom = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.JoinRoom(
                LocalUserId: nil,
                RoomName: nil,
                ClientBaseUrl: nil,
                ParticipantToken: nil,
                ParticipantId: nil,
                Flags: .zero,
                bManualAudioInputEnabled: false,
                bManualAudioOutputEnabled: false,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTC_JoinRoom"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
