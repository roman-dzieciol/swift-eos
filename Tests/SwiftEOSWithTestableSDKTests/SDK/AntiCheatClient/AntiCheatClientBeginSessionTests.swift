import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_BeginSessionTests: XCTestCase {
    public func testEOS_AntiCheatClient_BeginSession_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_BeginSession = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Mode, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_BeginSession")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.BeginSession(
            LocalUserId: nil,
            Mode: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_BeginSession"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
