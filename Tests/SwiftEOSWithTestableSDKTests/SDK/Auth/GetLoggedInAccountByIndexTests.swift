import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_GetLoggedInAccountByIndexTests: XCTestCase {
    public func testEOS_Auth_GetLoggedInAccountByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Auth_GetLoggedInAccountByIndex = { Handle, Index in
                XCTAssertNil(Handle)
                XCTAssertEqual(Index, .zero)
                TestGlobals.current.sdkReceived.append("EOS_Auth_GetLoggedInAccountByIndex")
                return nil
            }
            defer { __on_EOS_Auth_GetLoggedInAccountByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_EpicAccountId? = try object.GetLoggedInAccountByIndex(Index: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_GetLoggedInAccountByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Auth_GetLoggedInAccountByIndex"])
    }
}
