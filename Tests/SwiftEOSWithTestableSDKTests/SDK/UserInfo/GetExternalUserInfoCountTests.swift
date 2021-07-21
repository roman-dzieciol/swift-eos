import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_GetExternalUserInfoCountTests: XCTestCase {
    public func testEOS_UserInfo_GetExternalUserInfoCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_GetExternalUserInfoCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_UserInfo_GetExternalUserInfoCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_GETEXTERNALUSERINFOCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                return .zero
            }
            defer { __on_EOS_UserInfo_GetExternalUserInfoCount = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetExternalUserInfoCount(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_GetExternalUserInfoCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_GetExternalUserInfoCount"])
    }
}
