import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_CopyOfferByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferByIndex = { Handle, Options, OutOffer in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyOfferByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYOFFERBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.OfferIndex, .zero)
                XCTAssertNotNil(OutOffer)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyOfferByIndex(
                    LocalUserId: nil,
                    OfferIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferByIndex"])
    }
}
