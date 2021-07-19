import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetBucketIdTests: XCTestCase {
    public func testEOS_LobbyModification_SetBucketId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyModification_Release = { LobbyModificationHandle in
                XCTAssertNil(LobbyModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyModification_SetBucketId = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.BucketId)
                TestGlobals.current.sdkReceived.append("EOS_LobbyModification_SetBucketId")
                return .zero
            }
            defer { __on_EOS_LobbyModification_SetBucketId = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetBucketId(BucketId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyModification_SetBucketId", "EOS_LobbyModification_Release"])
        }
        
        // Then
        __on_EOS_LobbyModification_Release = nil
    }
}
