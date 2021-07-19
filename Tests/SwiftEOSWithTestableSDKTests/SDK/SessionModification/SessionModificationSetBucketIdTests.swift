import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetBucketIdTests: XCTestCase {
    public func testEOS_SessionModification_SetBucketId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                XCTAssertNil(SessionModificationHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetBucketId = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.BucketId)
                TestGlobals.current.sdkReceived.append("EOS_SessionModification_SetBucketId")
                return .zero
            }
            defer { __on_EOS_SessionModification_SetBucketId = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetBucketId(BucketId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionModification_SetBucketId", "EOS_SessionModification_Release"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
    }
}
