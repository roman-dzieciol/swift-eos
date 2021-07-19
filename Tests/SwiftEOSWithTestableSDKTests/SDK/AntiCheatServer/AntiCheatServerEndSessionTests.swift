import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_EndSessionTests: XCTestCase {
    public func testEOS_AntiCheatServer_EndSession_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_EndSession = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_EndSession")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.EndSession()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_EndSession"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
