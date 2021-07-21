import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CreateSessionModificationTests: XCTestCase {
    public func testEOS_Sessions_CreateSessionModification_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CreateSessionModification = { Handle, Options, OutSessionModificationHandle in
                GTest.current.sdkReceived.append("EOS_Sessions_CreateSessionModification")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_CREATESESSIONMODIFICATION_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionName)
                XCTAssertNil(Options!.pointee.BucketId)
                XCTAssertEqual(Options!.pointee.MaxPlayers, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.bPresenceEnabled, .zero)
                XCTAssertNil(Options!.pointee.SessionId)
                XCTAssertNotNil(OutSessionModificationHandle)
                return .zero
            }
            defer { __on_EOS_Sessions_CreateSessionModification = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CreateSessionModification(
                    SessionName: nil,
                    BucketId: nil,
                    MaxPlayers: .zero,
                    LocalUserId: nil,
                    bPresenceEnabled: false,
                    SessionId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CreateSessionModification"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CreateSessionModification"])
    }
}
