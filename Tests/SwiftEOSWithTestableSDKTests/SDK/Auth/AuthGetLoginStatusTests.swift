import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Auth_GetLoginStatusTests: XCTestCase {
    public func testEOS_Auth_GetLoginStatus_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Auth_GetLoginStatus = { Handle, LocalUserId in
                GTest.current.sdkReceived.append("EOS_Auth_GetLoginStatus")
                XCTAssertNil(Handle)
                XCTAssertNil(LocalUserId)
                return .zero
            }
            defer { __on_EOS_Auth_GetLoginStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ELoginStatus = object.GetLoginStatus(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_GetLoginStatus"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_GetLoginStatus"])
    }
}
