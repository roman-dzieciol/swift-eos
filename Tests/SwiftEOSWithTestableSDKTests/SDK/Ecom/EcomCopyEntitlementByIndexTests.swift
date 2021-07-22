import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_CopyEntitlementByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyEntitlementByIndex = { Handle, Options, OutEntitlement in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyEntitlementByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYENTITLEMENTBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.EntitlementIndex, .zero)
                XCTAssertNotNil(OutEntitlement)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyEntitlementByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyEntitlementByIndex(
                    LocalUserId: nil,
                    EntitlementIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyEntitlementByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyEntitlementByIndex"])
    }
}
