import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyEntitlementByNameAndIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementByNameAndIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyEntitlementByNameAndIndex = { Handle, Options, OutEntitlement in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EntitlementName)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNotNil(OutEntitlement)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyEntitlementByNameAndIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyEntitlementByNameAndIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_Entitlement? = try object.CopyEntitlementByNameAndIndex(
                LocalUserId: nil,
                EntitlementName: nil,
                Index: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyEntitlementByNameAndIndex"])
            XCTAssertNil(result)
        }
    }
}
