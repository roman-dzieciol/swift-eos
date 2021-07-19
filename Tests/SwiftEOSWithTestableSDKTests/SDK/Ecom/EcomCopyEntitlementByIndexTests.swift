import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyEntitlementByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyEntitlementByIndex = { Handle, Options, OutEntitlement in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.EntitlementIndex, .zero)
                XCTAssertNil(OutEntitlement)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyEntitlementByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyEntitlementByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_Entitlement? = try object.CopyEntitlementByIndex(
                LocalUserId: nil,
                EntitlementIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyEntitlementByIndex"])
            XCTAssertNil(result)
        }
    }
}
