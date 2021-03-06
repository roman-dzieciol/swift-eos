import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_ByteArray_ToStringTests: XCTestCase {
    public func testEOS_ByteArray_ToString_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ByteArray_ToString = { ByteArray, Length, OutBuffer, InOutBufferLength in
                GTest.current.sdkReceived.append("EOS_ByteArray_ToString")
                XCTAssertNil(ByteArray)
                XCTAssertEqual(Length, .zero)
                XCTAssertNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                return .zero
            }
            defer { __on_EOS_ByteArray_ToString = nil }
            
            // When SDK function is called
            let result: String = try SwiftEOS_ByteArray_ToString(ByteArray: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ByteArray_ToString"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ByteArray_ToString"])
    }
}
