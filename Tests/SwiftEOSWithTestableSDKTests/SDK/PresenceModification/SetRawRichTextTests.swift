import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PresenceModification_SetRawRichTextTests: XCTestCase {
    public func testEOS_PresenceModification_SetRawRichText_Null() throws {
        TestGlobals.reset()
        __on_EOS_PresenceModification_SetRawRichText = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.RichText)
            TestGlobals.sdkReceived.append("EOS_PresenceModification_SetRawRichText")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_PresenceModification_Actor = SwiftEOS_PresenceModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetRawRichText(RichText: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_PresenceModification_SetRawRichText"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
