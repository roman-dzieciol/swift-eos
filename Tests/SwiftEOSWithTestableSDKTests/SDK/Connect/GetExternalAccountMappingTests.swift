import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Connect_GetExternalAccountMappingTests: XCTestCase {
    public func testEOS_Connect_GetExternalAccountMapping_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetExternalAccountMapping = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Connect_GetExternalAccountMapping")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_GETEXTERNALACCOUNTMAPPING_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNil(Options!.pointee.TargetExternalUserId)
                return nil
            }
            defer { __on_EOS_Connect_GetExternalAccountMapping = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ProductUserId? = try object.GetExternalAccountMapping(
                LocalUserId: nil,
                AccountIdType: .zero,
                TargetExternalUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetExternalAccountMapping"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetExternalAccountMapping"])
    }
}
