import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EpicAccountId_ToStringTests: XCTestCase {
    public func testEOS_EpicAccountId_ToString_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_EpicAccountId_ToString = { AccountId, OutBuffer, InOutBufferLength in
                XCTAssertNil(AccountId)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                GTest.current.sdkReceived.append("EOS_EpicAccountId_ToString")
                return .zero
            }
            defer { __on_EOS_EpicAccountId_ToString = nil }
            
            // When SDK function is called
            let result: String? = try SwiftEOS_EpicAccountId_ToString(AccountId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_EpicAccountId_ToString"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_EpicAccountId_ToString"])
    }
}
