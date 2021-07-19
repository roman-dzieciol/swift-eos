import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_GetPermissionsCountTests: XCTestCase {
    public func testEOS_KWS_GetPermissionsCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_KWS_GetPermissionsCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                TestGlobals.current.sdkReceived.append("EOS_KWS_GetPermissionsCount")
                return .zero
            }
            defer { __on_EOS_KWS_GetPermissionsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetPermissionsCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_KWS_GetPermissionsCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
