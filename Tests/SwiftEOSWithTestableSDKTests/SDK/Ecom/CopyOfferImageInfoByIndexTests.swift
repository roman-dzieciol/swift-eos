import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferImageInfoByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferImageInfoByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferImageInfoByIndex = { Handle, Options, OutImageInfo in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyOfferImageInfoByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYOFFERIMAGEINFOBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                XCTAssertEqual(Options!.pointee.ImageInfoIndex, .zero)
                XCTAssertNotNil(OutImageInfo)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferImageInfoByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyOfferImageInfoByIndex(
                    LocalUserId: nil,
                    OfferId: nil,
                    ImageInfoIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferImageInfoByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyOfferImageInfoByIndex"])
    }
}
