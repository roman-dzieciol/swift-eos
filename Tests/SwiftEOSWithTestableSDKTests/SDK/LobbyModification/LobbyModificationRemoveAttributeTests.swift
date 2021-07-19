import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_RemoveAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_RemoveAttribute_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                XCTAssertNil(LobbyModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_RemoveAttribute = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.Key)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_RemoveAttribute")
                return .zero
            }
            defer { __on_EOS_LobbyModification_RemoveAttribute = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.RemoveAttribute(Key: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyModification_RemoveAttribute", "EOS_LobbyModification_Release"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
    }
}
