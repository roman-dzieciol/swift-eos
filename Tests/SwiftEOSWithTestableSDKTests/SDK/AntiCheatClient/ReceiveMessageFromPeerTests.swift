import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_ReceiveMessageFromPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_ReceiveMessageFromPeer_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_ReceiveMessageFromPeer = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.PeerHandle)
            XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
            XCTAssertNil(Options!.pointee.Data)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_ReceiveMessageFromPeer")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.ReceiveMessageFromPeer(
            PeerHandle: nil,
            Data: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_ReceiveMessageFromPeer"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
