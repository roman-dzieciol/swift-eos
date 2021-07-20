import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_VerifyUserAuthTests: XCTestCase {
    public func testEOS_Auth_VerifyUserAuth_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Auth_VerifyUserAuth = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_AUTH_VERIFYUSERAUTH_API_LATEST)
                XCTAssertNil(Options!.pointee.AuthToken)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Auth_VerifyUserAuthCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
                GTest.current.sdkReceived.append("EOS_Auth_VerifyUserAuth")
            }
            defer { __on_EOS_Auth_VerifyUserAuth = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: nil)
            
            // When SDK function is called
            try object.VerifyUserAuth(
                AuthToken: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_VerifyUserAuth"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_VerifyUserAuth"])
    }
}
