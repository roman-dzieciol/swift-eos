import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_LeaveRoomTests: XCTestCase {
    public func testEOS_RTC_LeaveRoom_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTC_LeaveRoom = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_RTC_LeaveRoomCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            RoomName: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_RTC_LeaveRoom")
            }
            defer { __on_EOS_RTC_LeaveRoom = nil }
            
            // Given Actor
            let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LeaveRoom(
                LocalUserId: nil,
                RoomName: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.RoomName)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_RTC_LeaveRoom"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
