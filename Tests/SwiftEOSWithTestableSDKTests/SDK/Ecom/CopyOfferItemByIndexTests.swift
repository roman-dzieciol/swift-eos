import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferItemByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferItemByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferItemByIndex = { Handle, Options, OutItem in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYOFFERITEMBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                XCTAssertEqual(Options!.pointee.ItemIndex, .zero)
                XCTAssertNotNil(OutItem)
                GTest.current.sdkReceived.append("EOS_Ecom_CopyOfferItemByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferItemByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyOfferItemByIndex(
                    LocalUserId: nil,
                    OfferId: nil,
                    ItemIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferItemByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferItemByIndex"])
    }
}
