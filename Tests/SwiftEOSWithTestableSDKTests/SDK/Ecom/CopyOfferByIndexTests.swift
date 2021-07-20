import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferByIndex = { Handle, Options, OutOffer in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYOFFERBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.OfferIndex, .zero)
                XCTAssertNotNil(OutOffer)
                GTest.current.sdkReceived.append("EOS_Ecom_CopyOfferByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_CatalogOffer? = try object.CopyOfferByIndex(
                LocalUserId: nil,
                OfferIndex: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferByIndex"])
    }
}
