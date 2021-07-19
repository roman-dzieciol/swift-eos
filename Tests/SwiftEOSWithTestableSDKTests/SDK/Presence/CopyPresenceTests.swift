import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_CopyPresenceTests: XCTestCase {
    public func testEOS_Presence_CopyPresence_Null() throws {
        TestGlobals.reset()
        __on_EOS_Presence_CopyPresence = { Handle, Options, OutPresence in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(OutPresence)
            TestGlobals.sdkReceived.append("EOS_Presence_CopyPresence")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Presence_Info? = try object.CopyPresence(
            LocalUserId: nil,
            TargetUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Presence_CopyPresence"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
