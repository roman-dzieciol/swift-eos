import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetTransactionCountTests: XCTestCase {
    public func testEOS_Ecom_GetTransactionCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetTransactionCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETTRANSACTIONCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_GetTransactionCount")
                return .zero
            }
            defer { __on_EOS_Ecom_GetTransactionCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetTransactionCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_GetTransactionCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_GetTransactionCount"])
    }
}
