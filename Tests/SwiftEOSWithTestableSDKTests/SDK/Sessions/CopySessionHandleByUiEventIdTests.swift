import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleByUiEventIdTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleByUiEventId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_CopySessionHandleByUiEventId = { Handle, Options, OutSessionHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.UiEventId, .zero)
            XCTAssertNil(OutSessionHandle)
            TestGlobals.sdkReceived.append("EOS_Sessions_CopySessionHandleByUiEventId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HSessionDetails? = try object.CopySessionHandleByUiEventId(UiEventId: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_CopySessionHandleByUiEventId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
