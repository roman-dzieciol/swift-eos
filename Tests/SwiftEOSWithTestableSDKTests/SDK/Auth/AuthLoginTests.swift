import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_LoginTests: XCTestCase {
    public func testEOS_Auth_Login_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Auth_Login = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_AUTH_LOGIN_API_LATEST)
                XCTAssertNil(Options!.pointee.Credentials)
                XCTAssertEqual(Options!.pointee.ScopeFlags, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Auth_LoginCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            PinGrantInfo: nil,
                            ContinuanceToken: .nonZeroPointer,
                            AccountFeatureRestrictedInfo: nil
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Auth_Login")
            }
            defer { __on_EOS_Auth_Login = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.Login(
                Credentials: nil,
                ScopeFlags: .zero,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.PinGrantInfo)
                    XCTAssertNil(arg0.ContinuanceToken)
                    XCTAssertNil(arg0.AccountFeatureRestrictedInfo)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_Login"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
