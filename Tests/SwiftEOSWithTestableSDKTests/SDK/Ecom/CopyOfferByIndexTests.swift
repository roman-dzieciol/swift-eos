import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferByIndex = { Handle, Options, OutOffer in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.OfferIndex, .zero)
                XCTAssertNil(OutOffer)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyOfferByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_CatalogOffer? = try object.CopyOfferByIndex(
                LocalUserId: nil,
                OfferIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyOfferByIndex"])
            XCTAssertNil(result)
        }
    }
}
