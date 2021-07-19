import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyTransactionByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyTransactionByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyTransactionByIndex = { Handle, Options, OutTransaction in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYTRANSACTIONBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.TransactionIndex, .zero)
                XCTAssertNil(OutTransaction)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyTransactionByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyTransactionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_Ecom_HTransaction? = try object.CopyTransactionByIndex(
                LocalUserId: nil,
                TransactionIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyTransactionByIndex"])
            XCTAssertNil(result)
        }
    }
}
