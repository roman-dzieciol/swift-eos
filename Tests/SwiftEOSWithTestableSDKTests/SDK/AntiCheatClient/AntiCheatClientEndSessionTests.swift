import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_EndSessionTests: XCTestCase {
    public func testEOS_AntiCheatClient_EndSession_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_EndSession = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_EndSession")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.EndSession()
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_EndSession"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
