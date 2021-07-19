import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_AcknowledgeEventIdTests: XCTestCase {
    public func testEOS_UI_AcknowledgeEventId_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_AcknowledgeEventId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.UiEventId, .zero)
            XCTAssertEqual(Options!.pointee.Result, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_UI_AcknowledgeEventId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.AcknowledgeEventId(
            UiEventId: .zero,
            Result: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_AcknowledgeEventId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
