import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByAccountTypeTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByAccountType_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyExternalUserInfoByAccountType = { Handle, Options, OutExternalUserInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AccountType, .zero)
                XCTAssertNil(OutExternalUserInfo)
                TestGlobals.current.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByAccountType")
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyExternalUserInfoByAccountType = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_UserInfo_ExternalUserInfo? = try object.CopyExternalUserInfoByAccountType(
                LocalUserId: nil,
                TargetUserId: nil,
                AccountType: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByAccountType"])
            XCTAssertNil(result)
        }
    }
}
