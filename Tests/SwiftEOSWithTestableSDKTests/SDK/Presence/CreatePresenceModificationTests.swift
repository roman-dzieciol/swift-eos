import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_CreatePresenceModificationTests: XCTestCase {
    public func testEOS_Presence_CreatePresenceModification_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Presence_CreatePresenceModification = { Handle, Options, OutPresenceModificationHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(OutPresenceModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_Presence_CreatePresenceModification")
                return .zero
            }
            defer { __on_EOS_Presence_CreatePresenceModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HPresenceModification? = try object.CreatePresenceModification(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_CreatePresenceModification"])
            XCTAssertNil(result)
        }
    }
}
