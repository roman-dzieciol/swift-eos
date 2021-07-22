import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_GetOfferItemCountTests: XCTestCase {
    public func testEOS_Ecom_GetOfferItemCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetOfferItemCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Ecom_GetOfferItemCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                return .zero
            }
            defer { __on_EOS_Ecom_GetOfferItemCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetOfferItemCount(
                LocalUserId: nil,
                OfferId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetOfferItemCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetOfferItemCount"])
    }
}
