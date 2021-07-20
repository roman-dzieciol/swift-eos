import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_SetRawRichTextTests: XCTestCase {
    public func testEOS_PresenceModification_SetRawRichText_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PresenceModification_Release = { PresenceModificationHandle in
                XCTAssertNil(PresenceModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_PresenceModification_SetRawRichText = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCEMODIFICATION_SETRAWRICHTEXT_API_LATEST)
                XCTAssertNil(Options!.pointee.RichText)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_SetRawRichText")
                return .zero
            }
            defer { __on_EOS_PresenceModification_SetRawRichText = nil }
            
            // Given Actor
            let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetRawRichText(RichText: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PresenceModification_SetRawRichText"])
        }
        
        // Then
        __on_EOS_PresenceModification_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PresenceModification_SetRawRichText", "EOS_PresenceModification_Release"])
    }
}
