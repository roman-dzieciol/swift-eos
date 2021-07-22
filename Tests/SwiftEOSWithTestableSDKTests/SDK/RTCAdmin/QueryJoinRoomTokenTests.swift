import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_RTCAdmin_QueryJoinRoomTokenTests: XCTestCase {
    public func testEOS_RTCAdmin_QueryJoinRoomToken_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_RTCAdmin_QueryJoinRoomToken = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_RTCAdmin_QueryJoinRoomToken")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_RTCADMIN_QUERYJOINROOMTOKEN_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RoomName)
                XCTAssertNil(Options!.pointee.TargetUserIds)
                XCTAssertEqual(Options!.pointee.TargetUserIdsCount, .zero)
                XCTAssertNil(Options!.pointee.TargetUserIpAddresses)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_RTCAdmin_QueryJoinRoomTokenCompleteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            RoomName: nil,
                            ClientBaseUrl: nil,
                            QueryId: .zero,
                            TokenCount: .zero
                        )))
            }
            defer { __on_EOS_RTCAdmin_QueryJoinRoomToken = nil }
            
            // Given Actor
            let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryJoinRoomToken(
                LocalUserId: nil,
                RoomName: nil,
                TargetUserIds: nil,
                TargetUserIpAddresses: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.RoomName)
                    XCTAssertNil(arg0.ClientBaseUrl)
                    XCTAssertEqual(arg0.QueryId, .zero)
                    XCTAssertEqual(arg0.TokenCount, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_QueryJoinRoomToken"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_RTCAdmin_QueryJoinRoomToken"])
    }
}
