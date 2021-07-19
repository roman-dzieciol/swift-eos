import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetProductUserIdMappingTests: XCTestCase {
    public func testEOS_Connect_GetProductUserIdMapping_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetProductUserIdMapping = { Handle, Options, OutBuffer, InOutBufferLength in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNil(Options!.pointee.TargetProductUserId)
                XCTAssertNil(OutBuffer)
                XCTAssertNil(InOutBufferLength)
                TestGlobals.current.sdkReceived.append("EOS_Connect_GetProductUserIdMapping")
                return .zero
            }
            defer { __on_EOS_Connect_GetProductUserIdMapping = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: String? = try object.GetProductUserIdMapping(
                LocalUserId: nil,
                AccountIdType: .zero,
                TargetProductUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_GetProductUserIdMapping"])
            XCTAssertNil(result)
        }
    }
}
