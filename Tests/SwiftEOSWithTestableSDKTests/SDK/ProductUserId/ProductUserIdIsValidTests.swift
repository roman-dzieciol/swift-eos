import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ProductUserId_IsValidTests: XCTestCase {
    public func testEOS_ProductUserId_IsValid_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ProductUserId_IsValid = { AccountId in
                XCTAssertNil(AccountId)
                TestGlobals.current.sdkReceived.append("EOS_ProductUserId_IsValid")
                return .zero
            }
            defer { __on_EOS_ProductUserId_IsValid = nil }
            
            // When SDK function is called
            let result: Bool = try SwiftEOS_ProductUserId_IsValid(AccountId: .nonZeroPointer)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ProductUserId_IsValid"])
            XCTAssertEqual(result, false)
        }
    }
}
