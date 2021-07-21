import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserExternalAccountByAccountTypeTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserExternalAccountByAccountType_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_CopyProductUserExternalAccountByAccountType = { Handle, Options, OutExternalAccountInfo in
                GTest.current.sdkReceived.append("EOS_Connect_CopyProductUserExternalAccountByAccountType")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_COPYPRODUCTUSEREXTERNALACCOUNTBYACCOUNTTYPE_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AccountIdType, .zero)
                XCTAssertNotNil(OutExternalAccountInfo)
                return .zero
            }
            defer { __on_EOS_Connect_CopyProductUserExternalAccountByAccountType = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyProductUserExternalAccountByAccountType(
                    TargetUserId: nil,
                    AccountIdType: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountType"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserExternalAccountByAccountType"])
    }
}
