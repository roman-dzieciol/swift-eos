import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ProductUserId_ToStringTests: XCTestCase {
    public func testEOS_ProductUserId_ToString_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ProductUserId_ToString = { AccountId, OutBuffer, InOutBufferLength in
                XCTAssertNil(AccountId)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_ProductUserId_ToString")
                return .zero
            }
            defer { __on_EOS_ProductUserId_ToString = nil }
            
            // When SDK function is called
            let result: String? = try SwiftEOS_ProductUserId_ToString(AccountId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ProductUserId_ToString"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ProductUserId_ToString"])
    }
}
