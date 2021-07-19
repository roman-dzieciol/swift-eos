import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_QueryUserInfoByExternalAccountTests: XCTestCase {
    public func testEOS_UserInfo_QueryUserInfoByExternalAccount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_QueryUserInfoByExternalAccount = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ExternalAccountId)
                XCTAssertEqual(Options!.pointee.AccountType, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: .nonZeroPointer,
                            ExternalAccountId: nil,
                            AccountType: .zero,
                            TargetUserId: .nonZeroPointer
                        )))
                TestGlobals.current.sdkReceived.append("EOS_UserInfo_QueryUserInfoByExternalAccount")
            }
            defer { __on_EOS_UserInfo_QueryUserInfoByExternalAccount = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.QueryUserInfoByExternalAccount(
                LocalUserId: nil,
                ExternalAccountId: nil,
                AccountType: .zero,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.ExternalAccountId)
                    XCTAssertEqual(arg0.AccountType, .zero)
                    XCTAssertNil(arg0.TargetUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UserInfo_QueryUserInfoByExternalAccount"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
