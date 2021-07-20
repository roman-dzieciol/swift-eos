import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_Transaction_GetTransactionIdTests: XCTestCase {
    public func testEOS_Ecom_Transaction_GetTransactionId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_Transaction_GetTransactionId = { Handle, OutBuffer, InOutBufferLength in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertNotNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_Transaction_GetTransactionId")
                return .zero
            }
            defer { __on_EOS_Ecom_Transaction_GetTransactionId = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: String? = try object.Transaction_GetTransactionId()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_Transaction_GetTransactionId"])
            XCTAssertNil(result)
        }
    }
}
