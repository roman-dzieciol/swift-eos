import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByAccountId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyExternalUserInfoByAccountId = { Handle, Options, OutExternalUserInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTID_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AccountId)
                XCTAssertNil(OutExternalUserInfo)
                TestGlobals.current.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByAccountId")
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyExternalUserInfoByAccountId = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_UserInfo_ExternalUserInfo? = try object.CopyExternalUserInfoByAccountId(
                LocalUserId: nil,
                TargetUserId: nil,
                AccountId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountId"])
            XCTAssertNil(result)
        }
    }
}
