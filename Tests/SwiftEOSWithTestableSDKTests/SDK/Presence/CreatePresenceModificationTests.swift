import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_CreatePresenceModificationTests: XCTestCase {
    public func testEOS_Presence_CreatePresenceModification_Null() throws {
        TestGlobals.reset()
        __on_EOS_Presence_CreatePresenceModification = { Handle, Options, OutPresenceModificationHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(OutPresenceModificationHandle)
            TestGlobals.sdkReceived.append("EOS_Presence_CreatePresenceModification")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HPresenceModification? = try object.CreatePresenceModification(LocalUserId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Presence_CreatePresenceModification"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
