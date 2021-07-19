import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_HasPresenceTests: XCTestCase {
    public func testEOS_Presence_HasPresence_Null() throws {
        TestGlobals.reset()
        __on_EOS_Presence_HasPresence = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            TestGlobals.sdkReceived.append("EOS_Presence_HasPresence")
            return .zero }
        let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Bool = try object.HasPresence(
            LocalUserId: nil,
            TargetUserId: nil
        )
        XCTAssertEqual(result, false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Presence_HasPresence"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
