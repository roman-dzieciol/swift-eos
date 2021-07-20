import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_ByteArray_ToStringTests: XCTestCase {
    public func testEOS_ByteArray_ToString_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ByteArray_ToString = { ByteArray, Length, OutBuffer, InOutBufferLength in
                XCTAssertNil(ByteArray)
                XCTAssertEqual(Length, .zero)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_ByteArray_ToString")
                return .zero
            }
            defer { __on_EOS_ByteArray_ToString = nil }
            
            // When SDK function is called
            let result: String? = try SwiftEOS_ByteArray_ToString(ByteArray: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_ByteArray_ToString"])
            XCTAssertNil(result)
        }
    }
}
