import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferImageInfoByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferImageInfoByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyOfferImageInfoByIndex = { Handle, Options, OutImageInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYOFFERIMAGEINFOBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                XCTAssertEqual(Options!.pointee.ImageInfoIndex, .zero)
                XCTAssertNil(OutImageInfo)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyOfferImageInfoByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyOfferImageInfoByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_KeyImageInfo? = try object.CopyOfferImageInfoByIndex(
                LocalUserId: nil,
                OfferId: nil,
                ImageInfoIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyOfferImageInfoByIndex"])
            XCTAssertNil(result)
        }
    }
}
