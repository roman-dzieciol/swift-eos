import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Sessions_SendInviteTests: XCTestCase {
    public func testEOS_Sessions_SendInvite_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Sessions_SendInvite = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Sessions_SendInvite")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_SENDINVITE_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Sessions_SendInviteCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
            }
            defer { __on_EOS_Sessions_SendInvite = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
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
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_SendInvite"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_SendInvite"])
    }
}
