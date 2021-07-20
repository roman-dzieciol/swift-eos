import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByIndexTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyExternalUserInfoByIndex = { Handle, Options, OutExternalUserInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYEXTERNALUSERINFOBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNotNil(OutExternalUserInfo)
                TestGlobals.current.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByIndex")
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyExternalUserInfoByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_UserInfo_ExternalUserInfo? = try object.CopyExternalUserInfoByIndex(
                LocalUserId: nil,
                TargetUserId: nil,
                Index: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByIndex"])
            XCTAssertNil(result)
        }
    }
}
