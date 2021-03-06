import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTC_BlockParticipantTests: XCTestCase {
    public func testEOS_RTC_BlockParticipant_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTC_BlockParticipant = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTC_BlockParticipant")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTC_BLOCKPARTICIPANT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.ParticipantId)
                XCTAssertEqual(Options!.pointee.bBlocked, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTC_BlockParticipantCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            RoomName: nil,
                            ParticipantId: nil,
                            bBlocked: .zero
                        )))
            }
            defer { __on_EOS_RTC_BlockParticipant = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: nil)
            
            // When SDK function is called
            try object.BlockParticipant(
                LocalUserId: nil,
                RoomName: nil,
                ParticipantId: nil,
                bBlocked: false,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertNil(arg0.ParticipantId)
                    XCTAssertEqual(arg0.bBlocked, false)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTC_BlockParticipant"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTC_BlockParticipant"])
    }
}
