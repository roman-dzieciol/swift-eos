import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_GetLoginStatusTests: XCTestCase {
    public func testEOS_Auth_GetLoginStatus_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Auth_GetLoginStatus = { Handle, LocalUserId in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertNil(LocalUserId)
                TestGlobals.current.sdkReceived.append("EOS_Auth_GetLoginStatus")
                return .zero
            }
            defer { __on_EOS_Auth_GetLoginStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_ELoginStatus = object.GetLoginStatus(LocalUserId: .nonZeroPointer)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_GetLoginStatus"])
            XCTAssertEqual(result, .zero)
        }
    }
}
