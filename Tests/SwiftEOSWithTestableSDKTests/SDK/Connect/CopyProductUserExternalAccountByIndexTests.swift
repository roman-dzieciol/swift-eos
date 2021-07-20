import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserExternalAccountByIndexTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserExternalAccountByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_CopyProductUserExternalAccountByIndex = { Handle, Options, OutExternalAccountInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.ExternalAccountInfoIndex, .zero)
                XCTAssertNotNil(OutExternalAccountInfo)
                TestGlobals.current.sdkReceived.append("EOS_Connect_CopyProductUserExternalAccountByIndex")
                return .zero
            }
            defer { __on_EOS_Connect_CopyProductUserExternalAccountByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Connect_ExternalAccountInfo? = try object.CopyProductUserExternalAccountByIndex(
                TargetUserId: nil,
                ExternalAccountInfoIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByIndex"])
            XCTAssertNil(result)
        }
    }
}
