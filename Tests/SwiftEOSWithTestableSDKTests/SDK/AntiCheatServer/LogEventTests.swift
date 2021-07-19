import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogEventTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogEvent_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogEvent = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ClientHandle)
            XCTAssertEqual(Options!.pointee.EventId, .zero)
            XCTAssertEqual(Options!.pointee.ParamsCount, .zero)
            XCTAssertNil(Options!.pointee.Params)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogEvent")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogEvent(
            ClientHandle: nil,
            EventId: .zero,
            Params: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogEvent"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
