import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_SendInviteTests: XCTestCase {
    public func testEOS_Sessions_SendInvite_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_SendInvite = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Sessions_SendInviteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Sessions_SendInvite")
            }
            defer { __on_EOS_Sessions_SendInvite = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SendInvite(
                SessionName: nil,
                LocalUserId: nil,
                TargetUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Sessions_SendInvite"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
