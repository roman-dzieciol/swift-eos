import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_LoginTests: XCTestCase {
    public func testEOS_Connect_Login_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Connect_Login = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_LOGIN_API_LATEST)
                XCTAssertNil(Options!.pointee.Credentials)
                XCTAssertNil(Options!.pointee.UserLoginInfo)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Connect_LoginCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            ContinuanceToken: nil
                        )))
                GTest.current.sdkReceived.append("EOS_Connect_Login")
            }
            defer { __on_EOS_Connect_Login = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            try object.Login(
                Credentials: nil,
                UserLoginInfo: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.ContinuanceToken)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_Login"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_Login"])
    }
}
