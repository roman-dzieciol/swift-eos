import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_SetStatusTests: XCTestCase {
    public func testEOS_PresenceModification_SetStatus_Null() throws {
        TestGlobals.reset()
        __on_EOS_PresenceModification_SetStatus = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.Status, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_PresenceModification_SetStatus")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetStatus(Status: .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PresenceModification_SetStatus"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
