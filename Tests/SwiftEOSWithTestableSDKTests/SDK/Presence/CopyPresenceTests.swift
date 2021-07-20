import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_CopyPresenceTests: XCTestCase {
    public func testEOS_Presence_CopyPresence_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Presence_CopyPresence = { Handle, Options, OutPresence in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_PRESENCE_COPYPRESENCE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(OutPresence)
                TestGlobals.current.sdkReceived.append("EOS_Presence_CopyPresence")
                return .zero
            }
            defer { __on_EOS_Presence_CopyPresence = nil }
            
            // Given Actor
            let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Presence_Info? = try object.CopyPresence(
                LocalUserId: nil,
                TargetUserId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Presence_CopyPresence"])
            XCTAssertNil(result)
        }
    }
}
