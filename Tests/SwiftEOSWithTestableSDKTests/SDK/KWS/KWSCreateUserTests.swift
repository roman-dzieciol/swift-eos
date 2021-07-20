import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_CreateUserTests: XCTestCase {
    public func testEOS_KWS_CreateUser_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_KWS_CreateUser = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_KWS_CREATEUSER_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.DateOfBirth)
                XCTAssertNil(Options!.pointee.ParentEmail)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_KWS_CreateUserCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LocalUserId: nil,
                            KWSUserId: nil,
                            bIsMinor: .zero
                        )))
                GTest.current.sdkReceived.append("EOS_KWS_CreateUser")
            }
            defer { __on_EOS_KWS_CreateUser = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: nil)
            
            // When SDK function is called
            try object.CreateUser(
                LocalUserId: nil,
                DateOfBirth: nil,
                ParentEmail: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.KWSUserId)
                    XCTAssertEqual(arg0.bIsMinor, false)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_CreateUser"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_KWS_CreateUser"])
    }
}
