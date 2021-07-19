import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CreateSessionModificationTests: XCTestCase {
    public func testEOS_Sessions_CreateSessionModification_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_CreateSessionModification = { Handle, Options, OutSessionModificationHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionName)
            XCTAssertNil(Options!.pointee.BucketId)
            XCTAssertEqual(Options!.pointee.MaxPlayers, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.bPresenceEnabled, .zero)
            XCTAssertNil(Options!.pointee.SessionId)
            XCTAssertNil(OutSessionModificationHandle)
            TestGlobals.sdkReceived.append("EOS_Sessions_CreateSessionModification")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HSessionModification? = try object.CreateSessionModification(
            SessionName: nil,
            BucketId: nil,
            MaxPlayers: .zero,
            LocalUserId: nil,
            bPresenceEnabled: false,
            SessionId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_CreateSessionModification"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
