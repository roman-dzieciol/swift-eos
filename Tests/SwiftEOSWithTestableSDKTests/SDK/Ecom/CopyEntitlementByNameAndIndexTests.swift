import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyEntitlementByNameAndIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyEntitlementByNameAndIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyEntitlementByNameAndIndex = { Handle, Options, OutEntitlement in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyEntitlementByNameAndIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYENTITLEMENTBYNAMEANDINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.EntitlementName)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNotNil(OutEntitlement)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyEntitlementByNameAndIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyEntitlementByNameAndIndex(
                    LocalUserId: nil,
                    EntitlementName: nil,
                    Index: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyEntitlementByNameAndIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyEntitlementByNameAndIndex"])
    }
}
