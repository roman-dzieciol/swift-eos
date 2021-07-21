import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_CopyExternalUserInfoByIndexTests: XCTestCase {
    public func testEOS_UserInfo_CopyExternalUserInfoByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_CopyExternalUserInfoByIndex = { Handle, Options, OutExternalUserInfo in
                GTest.current.sdkReceived.append("EOS_UserInfo_CopyExternalUserInfoByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_COPYEXTERNALUSERINFOBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNotNil(OutExternalUserInfo)
                return .zero
            }
            defer { __on_EOS_UserInfo_CopyExternalUserInfoByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyExternalUserInfoByIndex(
                    LocalUserId: nil,
                    TargetUserId: nil,
                    Index: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_CopyExternalUserInfoByIndex"])
    }
}
