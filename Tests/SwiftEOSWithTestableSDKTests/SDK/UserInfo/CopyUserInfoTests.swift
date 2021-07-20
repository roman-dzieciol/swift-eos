import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyUserInfoTests: XCTestCase {
    public func testEOS_UserInfo_CopyUserInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyUserInfo = { Handle, Options, OutUserInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYUSERINFO_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(OutUserInfo)
                TestGlobals.current.sdkReceived.append("EOS_UserInfo_CopyUserInfo")
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyUserInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_UserInfo? = try object.CopyUserInfo(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_UserInfo_CopyUserInfo"])
            XCTAssertNil(result)
        }
    }
}
