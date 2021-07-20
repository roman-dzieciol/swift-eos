import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyTransactionByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyTransactionById_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyTransactionById = { Handle, Options, OutTransaction in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYTRANSACTIONBYID_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TransactionId)
                XCTAssertNotNil(OutTransaction)
                GTest.current.sdkReceived.append("EOS_Ecom_CopyTransactionById")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyTransactionById = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_Ecom_HTransaction? = try object.CopyTransactionById(
                LocalUserId: nil,
                TransactionId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyTransactionById"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyTransactionById"])
    }
}
