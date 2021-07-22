import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PresenceModification_SetStatusTests: XCTestCase {
    public func testEOS_PresenceModification_SetStatus_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PresenceModification_Release = { PresenceModificationHandle in
                GTest.current.sdkReceived.append("EOS_PresenceModification_Release")
                XCTAssertNil(PresenceModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_PresenceModification_SetStatus = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_PresenceModification_SetStatus")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCEMODIFICATION_SETSTATUS_API_LATEST)
                XCTAssertEqual(Options!.pointee.Status, .zero)
                return .zero
            }
            defer { __on_EOS_PresenceModification_SetStatus = nil }
            
            // Given Actor
            let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetStatus(Status: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PresenceModification_SetStatus"])
        }
        
        // Then
        __on_EOS_PresenceModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PresenceModification_SetStatus", "EOS_PresenceModification_Release"])
    }
}
