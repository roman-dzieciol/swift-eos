import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetOfferCountTests: XCTestCase {
    public func testEOS_Ecom_GetOfferCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetOfferCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETOFFERCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                GTest.current.sdkReceived.append("EOS_Ecom_GetOfferCount")
                return .zero
            }
            defer { __on_EOS_Ecom_GetOfferCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetOfferCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetOfferCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetOfferCount"])
    }
}
