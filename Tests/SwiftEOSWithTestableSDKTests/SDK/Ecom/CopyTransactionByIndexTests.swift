import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_CopyTransactionByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyTransactionByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyTransactionByIndex = { Handle, Options, OutTransaction in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyTransactionByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYTRANSACTIONBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.TransactionIndex, .zero)
                XCTAssertNotNil(OutTransaction)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyTransactionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyTransactionByIndex(
                    LocalUserId: nil,
                    TransactionIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyTransactionByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyTransactionByIndex"])
    }
}
