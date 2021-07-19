import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_DumpSessionStateTests: XCTestCase {
    public func testEOS_Sessions_DumpSessionState_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_DumpSessionState = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionName)
            TestGlobals.sdkReceived.append("EOS_Sessions_DumpSessionState")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.DumpSessionState(SessionName: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_DumpSessionState"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
