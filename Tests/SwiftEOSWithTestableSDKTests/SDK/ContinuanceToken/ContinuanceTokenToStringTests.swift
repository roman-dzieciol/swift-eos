import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ContinuanceToken_ToStringTests: XCTestCase {
    public func testEOS_ContinuanceToken_ToString_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ContinuanceToken_ToString = { ContinuanceToken, OutBuffer, InOutBufferLength in
                XCTAssertNil(ContinuanceToken)
                XCTAssertNil(OutBuffer)
                XCTAssertNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_ContinuanceToken_ToString")
                return .zero
            }
            defer { __on_EOS_ContinuanceToken_ToString = nil }
            
            // When SDK function is called
            let result: String? = try SwiftEOS_ContinuanceToken_ToString(ContinuanceToken: .nonZeroPointer)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ContinuanceToken_ToString"])
            XCTAssertNil(result)
        }
    }
}
