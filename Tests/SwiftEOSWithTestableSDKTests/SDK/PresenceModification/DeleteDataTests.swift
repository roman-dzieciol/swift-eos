import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_DeleteDataTests: XCTestCase {
    public func testEOS_PresenceModification_DeleteData_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PresenceModification_Release = { PresenceModificationHandle in
                XCTAssertNil(PresenceModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_PresenceModification_DeleteData = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.RecordsCount, .zero)
                XCTAssertNil(Options!.pointee.Records)
                TestGlobals.current.sdkReceived.append("EOS_PresenceModification_DeleteData")
                return .zero
            }
            defer { __on_EOS_PresenceModification_DeleteData = nil }
            
            // Given Actor
            let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.DeleteData(Records: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PresenceModification_DeleteData", "EOS_PresenceModification_Release"])
        }
        
        // Then
        __on_EOS_PresenceModification_Release = nil
    }
}
