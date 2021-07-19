import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetExternalAccountMappingTests: XCTestCase {
    public func testEOS_Connect_GetExternalAccountMapping_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetExternalAccountMapping = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNil(Options!.pointee.TargetExternalUserId)
                TestGlobals.current.sdkReceived.append("EOS_Connect_GetExternalAccountMapping")
                return .nonZeroPointer
            }
            defer { __on_EOS_Connect_GetExternalAccountMapping = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_ProductUserId = try object.GetExternalAccountMapping(
                LocalUserId: nil,
                AccountIdType: .zero,
                TargetExternalUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_GetExternalAccountMapping"])
            XCTAssertNil(result)
        }
    }
}
