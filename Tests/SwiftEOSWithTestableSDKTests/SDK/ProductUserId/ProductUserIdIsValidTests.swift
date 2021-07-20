import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ProductUserId_IsValidTests: XCTestCase {
    public func testEOS_ProductUserId_IsValid_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ProductUserId_IsValid = { AccountId in
                XCTAssertNil(AccountId)
                GTest.current.sdkReceived.append("EOS_ProductUserId_IsValid")
                return .zero
            }
            defer { __on_EOS_ProductUserId_IsValid = nil }
            
            // When SDK function is called
            let result: Bool = try SwiftEOS_ProductUserId_IsValid(AccountId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ProductUserId_IsValid"])
            XCTAssertEqual(result, false)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ProductUserId_IsValid"])
    }
}
