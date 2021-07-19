import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetEntitlementsByNameCountTests: XCTestCase {
    public func testEOS_Ecom_GetEntitlementsByNameCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetEntitlementsByNameCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EntitlementName)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_GetEntitlementsByNameCount")
                return .zero
            }
            defer { __on_EOS_Ecom_GetEntitlementsByNameCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetEntitlementsByNameCount(
                LocalUserId: nil,
                EntitlementName: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_GetEntitlementsByNameCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
