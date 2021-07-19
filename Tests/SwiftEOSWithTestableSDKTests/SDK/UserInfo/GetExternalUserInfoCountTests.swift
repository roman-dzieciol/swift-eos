import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_GetExternalUserInfoCountTests: XCTestCase {
    public func testEOS_UserInfo_GetExternalUserInfoCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_GetExternalUserInfoCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                TestGlobals.current.sdkReceived.append("EOS_UserInfo_GetExternalUserInfoCount")
                return .zero
            }
            defer { __on_EOS_UserInfo_GetExternalUserInfoCount = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetExternalUserInfoCount(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UserInfo_GetExternalUserInfoCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
