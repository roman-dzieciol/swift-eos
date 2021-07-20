import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserExternalAccountByAccountId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_CopyProductUserExternalAccountByAccountId = { Handle, Options, OutExternalAccountInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTID_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AccountId)
                XCTAssertNotNil(OutExternalAccountInfo)
                GTest.current.sdkReceived.append("EOS_Connect_CopyProductUserExternalAccountByAccountId")
                return .zero
            }
            defer { __on_EOS_Connect_CopyProductUserExternalAccountByAccountId = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Connect_ExternalAccountInfo? = try object.CopyProductUserExternalAccountByAccountId(
                TargetUserId: nil,
                AccountId: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountId"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountId"])
    }
}
