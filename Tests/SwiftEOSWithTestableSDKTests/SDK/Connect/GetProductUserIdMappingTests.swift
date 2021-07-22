import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Connect_GetProductUserIdMappingTests: XCTestCase {
    public func testEOS_Connect_GetProductUserIdMapping_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetProductUserIdMapping = { Handle, Options, OutBuffer, InOutBufferLength in
                GTest.current.sdkReceived.append("EOS_Connect_GetProductUserIdMapping")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_GETPRODUCTUSERIDMAPPING_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNil(Options!.pointee.TargetProductUserId)
                XCTAssertNil(OutBuffer)
                XCTAssertNotNil(InOutBufferLength)
                return .zero
            }
            defer { __on_EOS_Connect_GetProductUserIdMapping = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            let result: String = try object.GetProductUserIdMapping(
                LocalUserId: nil,
                AccountIdType: .zero,
                TargetProductUserId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetProductUserIdMapping"])
            XCTAssertEqual(result, "")
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetProductUserIdMapping"])
    }
}
