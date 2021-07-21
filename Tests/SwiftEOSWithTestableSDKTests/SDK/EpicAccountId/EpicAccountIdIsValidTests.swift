import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EpicAccountId_IsValidTests: XCTestCase {
    public func testEOS_EpicAccountId_IsValid_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_EpicAccountId_IsValid = { AccountId in
                GTest.current.sdkReceived.append("EOS_EpicAccountId_IsValid")
                XCTAssertNil(AccountId)
                return .zero
            }
            defer { __on_EOS_EpicAccountId_IsValid = nil }
            
            // When SDK function is called
            let result: Bool = try SwiftEOS_EpicAccountId_IsValid(AccountId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_EpicAccountId_IsValid"])
            XCTAssertEqual(result, false)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_EpicAccountId_IsValid"])
    }
}
