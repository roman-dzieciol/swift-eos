import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_QueryUserInfoTests: XCTestCase {
    public func testEOS_UserInfo_QueryUserInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_QueryUserInfo = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_QUERYUSERINFO_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_UserInfo_QueryUserInfoCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            TargetUserId: nil
                        )))
                GTest.current.sdkReceived.append("EOS_UserInfo_QueryUserInfo")
            }
            defer { __on_EOS_UserInfo_QueryUserInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryUserInfo(
                LocalUserId: nil,
                TargetUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_QueryUserInfo"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_QueryUserInfo"])
    }
}
