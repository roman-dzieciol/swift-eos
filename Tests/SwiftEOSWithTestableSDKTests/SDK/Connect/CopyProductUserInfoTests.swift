import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserInfoTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_CopyProductUserInfo = { Handle, Options, OutExternalAccountInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_COPYPRODUCTUSERINFO_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(OutExternalAccountInfo)
                GTest.current.sdkReceived.append("EOS_Connect_CopyProductUserInfo")
                return .zero
            }
            defer { __on_EOS_Connect_CopyProductUserInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyProductUserInfo(TargetUserId: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserInfo"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_CopyProductUserInfo"])
    }
}
