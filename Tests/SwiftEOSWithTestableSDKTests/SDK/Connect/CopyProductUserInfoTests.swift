import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_CopyProductUserInfoTests: XCTestCase {
    public func testEOS_Connect_CopyProductUserInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_CopyProductUserInfo = { Handle, Options, OutExternalAccountInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(OutExternalAccountInfo)
                TestGlobals.current.sdkReceived.append("EOS_Connect_CopyProductUserInfo")
                return .zero
            }
            defer { __on_EOS_Connect_CopyProductUserInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Connect_ExternalAccountInfo? = try object.CopyProductUserInfo(TargetUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Connect_CopyProductUserInfo"])
            XCTAssertNil(result)
        }
    }
}
