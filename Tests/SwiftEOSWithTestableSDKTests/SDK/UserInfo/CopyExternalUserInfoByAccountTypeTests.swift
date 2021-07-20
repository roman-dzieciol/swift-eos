import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByAccountType_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyExternalUserInfoByAccountType = { Handle, Options, OutExternalUserInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTTYPE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AccountType, .zero)
                XCTAssertNotNil(OutExternalUserInfo)
                GTest.current.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByAccountType")
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyExternalUserInfoByAccountType = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_UserInfo_ExternalUserInfo? = try object.CopyExternalUserInfoByAccountType(
                LocalUserId: nil,
                TargetUserId: nil,
                AccountType: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountType"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountType"])
    }
}
