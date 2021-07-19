import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_UnregisterPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_UnregisterPeer_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_UnregisterPeer = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.PeerHandle)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_UnregisterPeer")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.UnregisterPeer(PeerHandle: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_UnregisterPeer"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
