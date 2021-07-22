import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByAccountType_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyExternalUserInfoByAccountType = { Handle, Options, OutExternalUserInfo in
                GTest.current.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByAccountType")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTTYPE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AccountType, .zero)
                XCTAssertNotNil(OutExternalUserInfo)
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyExternalUserInfoByAccountType = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyExternalUserInfoByAccountType(
                    LocalUserId: nil,
                    TargetUserId: nil,
                    AccountType: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountType"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountType"])
    }
}
