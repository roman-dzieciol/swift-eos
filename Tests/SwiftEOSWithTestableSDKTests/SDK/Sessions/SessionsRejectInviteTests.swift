import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_RejectInviteTests: XCTestCase {
    public func testEOS_Sessions_RejectInvite_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_RejectInvite = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.InviteId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Sessions_RejectInviteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Sessions_RejectInvite")
            }
            defer { __on_EOS_Sessions_RejectInvite = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.RejectInvite(
                LocalUserId: nil,
                InviteId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_RejectInvite"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
