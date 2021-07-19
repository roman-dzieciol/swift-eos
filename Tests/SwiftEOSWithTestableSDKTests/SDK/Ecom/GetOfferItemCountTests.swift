import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetOfferItemCountTests: XCTestCase {
    public func testEOS_Ecom_GetOfferItemCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetOfferItemCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETOFFERITEMCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_GetOfferItemCount")
                return .zero
            }
            defer { __on_EOS_Ecom_GetOfferItemCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetOfferItemCount(
                LocalUserId: nil,
                OfferId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_GetOfferItemCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
