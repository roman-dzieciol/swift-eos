import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_CreatePresenceModificationTests: XCTestCase {
    public func testEOS_Presence_CreatePresenceModification_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Presence_CreatePresenceModification = { Handle, Options, OutPresenceModificationHandle in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCE_CREATEPRESENCEMODIFICATION_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(OutPresenceModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_Presence_CreatePresenceModification")
                return .zero
            }
            defer { __on_EOS_Presence_CreatePresenceModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HPresenceModification? = try object.CreatePresenceModification(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_CreatePresenceModification"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_CreatePresenceModification"])
    }
}
