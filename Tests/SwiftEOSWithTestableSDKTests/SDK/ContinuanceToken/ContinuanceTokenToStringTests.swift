import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_ContinuanceToken_ToStringTests: XCTestCase {
    public func testEOS_ContinuanceToken_ToString_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ContinuanceToken_ToString = { ContinuanceToken, OutBuffer, InOutBufferLength in
                GTest.current.sdkReceived.append("EOS_ContinuanceToken_ToString")
                XCTAssertNil(ContinuanceToken)
                XCTAssertNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                return .zero
            }
            defer { __on_EOS_ContinuanceToken_ToString = nil }
            
            // When SDK function is called
            let result: String = try SwiftEOS_ContinuanceToken_ToString(ContinuanceToken: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ContinuanceToken_ToString"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ContinuanceToken_ToString"])
    }
}
