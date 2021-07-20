import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UserInfo_QueryUserInfoByDisplayNameTests: XCTestCase {
    public func testEOS_UserInfo_QueryUserInfoByDisplayName_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_UserInfo_QueryUserInfoByDisplayName = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_USERINFO_QUERYUSERINFOBYDISPLAYNAME_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.DisplayName)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_UserInfo_QueryUserInfoByDisplayNameCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            TargetUserId: nil,
                            DisplayName: nil
                        )))
                GTest.current.sdkReceived.append("EOS_UserInfo_QueryUserInfoByDisplayName")
            }
            defer { __on_EOS_UserInfo_QueryUserInfoByDisplayName = nil }
            
            // Given Actor
            let object: SwiftEOS_UserInfo_Actor = SwiftEOS_UserInfo_Actor(Handle: nil)
            
            // When SDK function is called
            try object.QueryUserInfoByDisplayName(
                LocalUserId: nil,
                DisplayName: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertNil(arg0.DisplayName)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_QueryUserInfoByDisplayName"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_UserInfo_QueryUserInfoByDisplayName"])
    }
}
