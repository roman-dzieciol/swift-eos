import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyUserInfoTests: XCTestCase {
    public func testEOS_UserInfo_CopyUserInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyUserInfo = { Handle, Options, OutUserInfo in
                GTest.current.sdkReceived.append("EOS_UserInfo_CopyUserInfo")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYUSERINFO_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(OutUserInfo)
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyUserInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyUserInfo(
                    LocalUserId: nil,
                    TargetUserId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyUserInfo"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyUserInfo"])
    }
}
