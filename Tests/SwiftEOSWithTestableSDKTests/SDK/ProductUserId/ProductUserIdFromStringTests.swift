import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_ProductUserId_FromStringTests: XCTestCase {
    public func testEOS_ProductUserId_FromString_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_ProductUserId_FromString = { ProductUserIdString in
                GTest.current.sdkReceived.append("EOS_ProductUserId_FromString")
                XCTAssertNil(ProductUserIdString)
                return nil
            }
            defer { __on_EOS_ProductUserId_FromString = nil }
            
            // When SDK function is called
            let result: EOS_ProductUserId? = SwiftEOS_ProductUserId_FromString(ProductUserIdString: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ProductUserId_FromString"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_ProductUserId_FromString"])
    }
}
