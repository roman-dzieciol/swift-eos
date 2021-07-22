import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Auth_DeletePersistentAuthTests: XCTestCase {
    public func testEOS_Auth_DeletePersistentAuth_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Auth_DeletePersistentAuth = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_Auth_DeletePersistentAuth")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_AUTH_DELETEPERSISTENTAUTH_API_LATEST)
                XCTAssertNil(Options!.pointee.RefreshToken)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Auth_DeletePersistentAuthCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData
                        )))
            }
            defer { __on_EOS_Auth_DeletePersistentAuth = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: nil)
            
            // When SDK function is called
            try object.DeletePersistentAuth(
                RefreshToken: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_DeletePersistentAuth"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_DeletePersistentAuth"])
    }
}
