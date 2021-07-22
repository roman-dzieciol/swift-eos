import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Connect_CopyProductUserExternalAccountByAccountIdTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserExternalAccountByAccountId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_CopyProductUserExternalAccountByAccountId = { Handle, Options, OutExternalAccountInfo in
                GTest.current.sdkReceived.append("EOS_Connect_CopyProductUserExternalAccountByAccountId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTID_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.AccountId)
                XCTAssertNotNil(OutExternalAccountInfo)
                return .zero
            }
            defer { __on_EOS_Connect_CopyProductUserExternalAccountByAccountId = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyProductUserExternalAccountByAccountId(
                    TargetUserId: nil,
                    AccountId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountId"])
    }
}
