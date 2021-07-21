import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_GetLoggedInAccountsCountTests: XCTestCase {
    public func testEOS_Auth_GetLoggedInAccountsCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Auth_GetLoggedInAccountsCount = { Handle in
                GTest.current.sdkReceived.append("EOS_Auth_GetLoggedInAccountsCount")
                XCTAssertNil(Handle)
                return .zero
            }
            defer { __on_EOS_Auth_GetLoggedInAccountsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetLoggedInAccountsCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_GetLoggedInAccountsCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Auth_GetLoggedInAccountsCount"])
    }
}
