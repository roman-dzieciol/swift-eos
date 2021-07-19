import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_SetDataTests: XCTestCase {
    public func testEOS_PresenceModification_SetData_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PresenceModification_Release = { PresenceModificationHandle in
                XCTAssertNil(PresenceModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_PresenceModification_SetData = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.RecordsCount, .zero)
                XCTAssertNil(Options!.pointee.Records)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_SetData")
                return .zero
            }
            defer { __on_EOS_PresenceModification_SetData = nil }
            
            // Given Actor
            let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetData(Records: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PresenceModification_SetData", "EOS_PresenceModification_Release"])
        }
        
        // Then
        __on_EOS_PresenceModification_Release = nil
    }
}
