import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_Transaction_GetEntitlementsCountTests: XCTestCase {
    public func testEOS_Ecom_Transaction_GetEntitlementsCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_Transaction_GetEntitlementsCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_Transaction_GetEntitlementsCount")
                return .zero
            }
            defer { __on_EOS_Ecom_Transaction_GetEntitlementsCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.Transaction_GetEntitlementsCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_Transaction_GetEntitlementsCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
