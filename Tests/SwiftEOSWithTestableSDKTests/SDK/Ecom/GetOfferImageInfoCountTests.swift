import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetOfferImageInfoCountTests: XCTestCase {
    public func testEOS_Ecom_GetOfferImageInfoCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetOfferImageInfoCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Ecom_GetOfferImageInfoCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETOFFERIMAGEINFOCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                return .zero
            }
            defer { __on_EOS_Ecom_GetOfferImageInfoCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetOfferImageInfoCount(
                LocalUserId: nil,
                OfferId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetOfferImageInfoCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetOfferImageInfoCount"])
    }
}
