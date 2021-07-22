import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_UserInfo_QueryUserInfoByExternalAccountTests: XCTestCase {
    public func testEOS_UserInfo_QueryUserInfoByExternalAccount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_QueryUserInfoByExternalAccount = { Handle, Options, ClientData, CompletionDelegate in
                GTest.current.sdkReceived.append("EOS_UserInfo_QueryUserInfoByExternalAccount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_QUERYUSERINFOBYEXTERNALACCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ExternalAccountId)
                XCTAssertEqual(Options!.pointee.AccountType, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_UserInfo_QueryUserInfoByExternalAccountCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            ExternalAccountId: nil,
                            AccountType: .zero,
                            TargetUserId: nil
                        )))
            }
            defer { __on_EOS_UserInfo_QueryUserInfoByExternalAccount = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
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
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_QueryUserInfoByExternalAccount"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_QueryUserInfoByExternalAccount"])
    }
}
