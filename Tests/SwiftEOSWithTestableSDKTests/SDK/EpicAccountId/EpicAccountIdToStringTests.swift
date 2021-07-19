import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EpicAccountId_ToStringTests: XCTestCase {
    public func testEOS_EpicAccountId_ToString_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_EpicAccountId_ToString = { AccountId, OutBuffer, InOutBufferLength in
                XCTAssertNil(AccountId)
                XCTAssertNil(OutBuffer)
                XCTAssertNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_EpicAccountId_ToString")
                return .zero
            }
            defer { __on_EOS_EpicAccountId_ToString = nil }
            
            // When SDK function is called
            let result: String? = try SwiftEOS_EpicAccountId_ToString(AccountId: .nonZeroPointer)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_EpicAccountId_ToString"])
            XCTAssertNil(result)
        }
    }
}
