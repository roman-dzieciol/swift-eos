import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_UpdateSessionModificationTests: XCTestCase {
    public func testEOS_Sessions_UpdateSessionModification_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_UpdateSessionModification = { Handle, Options, OutSessionModificationHandle in
                GTest.current.sdkReceived.append("EOS_Sessions_UpdateSessionModification")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_UPDATESESSIONMODIFICATION_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNotNil(OutSessionModificationHandle)
                return .zero
            }
            defer { __on_EOS_Sessions_UpdateSessionModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.UpdateSessionModification(SessionName: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_UpdateSessionModification"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_UpdateSessionModification"])
    }
}
