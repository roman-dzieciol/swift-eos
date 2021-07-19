import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferById_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferById = { Handle, Options, OutOffer in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYOFFERBYID_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                XCTAssertNil(OutOffer)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyOfferById")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferById = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_CatalogOffer? = try object.CopyOfferById(
                LocalUserId: nil,
                OfferId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyOfferById"])
            XCTAssertNil(result)
        }
    }
}
