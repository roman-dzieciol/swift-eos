import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetOfferImageInfoCountTests: XCTestCase {
    public func testEOS_Ecom_GetOfferImageInfoCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetOfferImageInfoCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.OfferId)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_GetOfferImageInfoCount")
                return .zero
            }
            defer { __on_EOS_Ecom_GetOfferImageInfoCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetOfferImageInfoCount(
                LocalUserId: nil,
                OfferId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_GetOfferImageInfoCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
