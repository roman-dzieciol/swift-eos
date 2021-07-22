import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PresenceModification_DeleteDataTests: XCTestCase {
    public func testEOS_PresenceModification_DeleteData_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_PresenceModification_Release = { PresenceModificationHandle in
                GTest.current.sdkReceived.append("EOS_PresenceModification_Release")
                XCTAssertNil(PresenceModificationHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_PresenceModification_DeleteData = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_PresenceModification_DeleteData")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCEMODIFICATION_DELETEDATA_API_LATEST)
                XCTAssertEqual(Options!.pointee.RecordsCount, .zero)
                XCTAssertNil(Options!.pointee.Records)
                return .zero
            }
            defer { __on_EOS_PresenceModification_DeleteData = nil }
            
            // Given Actor
            let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.DeleteData(Records: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PresenceModification_DeleteData"])
        }
        
        // Then
        __on_EOS_PresenceModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PresenceModification_DeleteData", "EOS_PresenceModification_Release"])
    }
}
