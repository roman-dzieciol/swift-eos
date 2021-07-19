import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_UnregisterClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_UnregisterClient_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_UnregisterClient = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ClientHandle)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_UnregisterClient")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.UnregisterClient(ClientHandle: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_UnregisterClient"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
