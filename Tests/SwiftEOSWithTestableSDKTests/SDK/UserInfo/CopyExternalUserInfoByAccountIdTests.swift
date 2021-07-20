import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountIdTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByAccountId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyExternalUserInfoByAccountId = { Handle, Options, OutExternalUserInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYEXTERNALUSERINFOBYACCOUNTID_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AccountId)
                XCTAssertNotNil(OutExternalUserInfo)
                GTest.current.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByAccountId")
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyExternalUserInfoByAccountId = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyExternalUserInfoByAccountId(
                    LocalUserId: nil,
                    TargetUserId: nil,
                    AccountId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountId"])
    }
}
