import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserExternalAccountByAccountTypeTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserExternalAccountByAccountType_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_CopyProductUserExternalAccountByAccountType = { Handle, Options, OutExternalAccountInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTTYPE_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNotNil(OutExternalAccountInfo)
                TestGlobals.current.sdkReceived.append("EOS_Connect_CopyProductUserExternalAccountByAccountType")
                return .zero
            }
            defer { __on_EOS_Connect_CopyProductUserExternalAccountByAccountType = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Connect_ExternalAccountInfo? = try object.CopyProductUserExternalAccountByAccountType(
                TargetUserId: nil,
                AccountIdType: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountType"])
            XCTAssertNil(result)
        }
    }
}
