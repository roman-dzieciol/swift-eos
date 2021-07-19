import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyEntitlementByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementById_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyEntitlementById = { Handle, Options, OutEntitlement in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EntitlementId)
                XCTAssertNil(OutEntitlement)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyEntitlementById")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyEntitlementById = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_Entitlement? = try object.CopyEntitlementById(
                LocalUserId: nil,
                EntitlementId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyEntitlementById"])
            XCTAssertNil(result)
        }
    }
}
