import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_RemoveAttributeTests: XCTestCase {
    public func testEOS_SessionModification_RemoveAttribute_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                XCTAssertNil(SessionModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_RemoveAttribute = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
                XCTAssertNil(Options!.pointee.Key)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_RemoveAttribute")
                return .zero
            }
            defer { __on_EOS_SessionModification_RemoveAttribute = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.RemoveAttribute(Key: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionModification_RemoveAttribute"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionModification_RemoveAttribute", "EOS_SessionModification_Release"])
    }
}
