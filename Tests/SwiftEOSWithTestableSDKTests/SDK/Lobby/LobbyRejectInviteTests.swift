import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_RejectInviteTests: XCTestCase {
    public func testEOS_Lobby_RejectInvite_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_RejectInvite = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.InviteId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Lobby_RejectInviteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            InviteId: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Lobby_RejectInvite")
            }
            defer { __on_EOS_Lobby_RejectInvite = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.RejectInvite(
                InviteId: nil,
                LocalUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.InviteId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_RejectInvite"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
