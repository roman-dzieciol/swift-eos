import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_GetLoggedInAccountsCountTests: XCTestCase {
    public func testEOS_Auth_GetLoggedInAccountsCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Auth_GetLoggedInAccountsCount = { Handle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                TestGlobals.current.sdkReceived.append("EOS_Auth_GetLoggedInAccountsCount")
                return .zero
            }
            defer { __on_EOS_Auth_GetLoggedInAccountsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetLoggedInAccountsCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_GetLoggedInAccountsCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
