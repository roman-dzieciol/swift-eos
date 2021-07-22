import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_CopyEntitlementByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementById_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyEntitlementById = { Handle, Options, OutEntitlement in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyEntitlementById")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYENTITLEMENTBYID_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EntitlementId)
                XCTAssertNotNil(OutEntitlement)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyEntitlementById = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyEntitlementById(
                    LocalUserId: nil,
                    EntitlementId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyEntitlementById"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyEntitlementById"])
    }
}
