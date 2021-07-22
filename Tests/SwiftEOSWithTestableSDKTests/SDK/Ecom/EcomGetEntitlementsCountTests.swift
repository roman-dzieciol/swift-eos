import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_GetEntitlementsCountTests: XCTestCase {
    public func testEOS_Ecom_GetEntitlementsCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetEntitlementsCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Ecom_GetEntitlementsCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETENTITLEMENTSCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                return .zero
            }
            defer { __on_EOS_Ecom_GetEntitlementsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetEntitlementsCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetEntitlementsCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetEntitlementsCount"])
    }
}
