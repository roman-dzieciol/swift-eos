import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_UpdateSessionModificationTests: XCTestCase {
    public func testEOS_Sessions_UpdateSessionModification_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_UpdateSessionModification = { Handle, Options, OutSessionModificationHandle in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_UPDATESESSIONMODIFICATION_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNotNil(OutSessionModificationHandle)
                GTest.current.sdkReceived.append("EOS_Sessions_UpdateSessionModification")
                return .zero
            }
            defer { __on_EOS_Sessions_UpdateSessionModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HSessionModification? = try object.UpdateSessionModification(SessionName: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_UpdateSessionModification"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_UpdateSessionModification"])
    }
}
