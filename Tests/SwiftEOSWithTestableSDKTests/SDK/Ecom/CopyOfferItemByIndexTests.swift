import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferItemByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferItemByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferItemByIndex = { Handle, Options, OutItem in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                XCTAssertEqual(Options!.pointee.ItemIndex, .zero)
                XCTAssertNotNil(OutItem)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyOfferItemByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferItemByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_CatalogItem? = try object.CopyOfferItemByIndex(
                LocalUserId: nil,
                OfferId: nil,
                ItemIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyOfferItemByIndex"])
            XCTAssertNil(result)
        }
    }
}
