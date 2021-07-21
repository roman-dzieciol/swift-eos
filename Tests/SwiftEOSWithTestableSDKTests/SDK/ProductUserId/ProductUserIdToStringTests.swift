import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ProductUserId_ToStringTests: XCTestCase {
    public func testEOS_ProductUserId_ToString_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ProductUserId_ToString = { AccountId, OutBuffer, InOutBufferLength in
                GTest.current.sdkReceived.append("EOS_ProductUserId_ToString")
                XCTAssertNil(AccountId)
                XCTAssertNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                return .zero
            }
            defer { __on_EOS_ProductUserId_ToString = nil }
            
            // When SDK function is called
            let result: String = try SwiftEOS_ProductUserId_ToString(AccountId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ProductUserId_ToString"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ProductUserId_ToString"])
    }
}
