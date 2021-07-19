import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleForPresenceTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleForPresence_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_CopySessionHandleForPresence = { Handle, Options, OutSessionHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(OutSessionHandle)
            TestGlobals.sdkReceived.append("EOS_Sessions_CopySessionHandleForPresence")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HSessionDetails? = try object.CopySessionHandleForPresence(LocalUserId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_CopySessionHandleForPresence"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
