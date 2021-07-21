import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetEntitlementsByNameCountTests: XCTestCase {
    public func testEOS_Ecom_GetEntitlementsByNameCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetEntitlementsByNameCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Ecom_GetEntitlementsByNameCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETENTITLEMENTSBYNAMECOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EntitlementName)
                return .zero
            }
            defer { __on_EOS_Ecom_GetEntitlementsByNameCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetEntitlementsByNameCount(
                LocalUserId: nil,
                EntitlementName: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetEntitlementsByNameCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_GetEntitlementsByNameCount"])
    }
}
