import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_RegisterPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_RegisterPeer_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_RegisterPeer = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.PeerHandle)
            XCTAssertEqual(Options!.pointee.ClientType, .init(rawValue: .zero)!)
            XCTAssertEqual(Options!.pointee.ClientPlatform, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.AccountId)
            XCTAssertNil(Options!.pointee.IpAddress)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_RegisterPeer")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RegisterPeer(
            PeerHandle: nil,
            ClientType: .init(rawValue: .zero)!,
            ClientPlatform: .init(rawValue: .zero)!,
            AccountId: nil,
            IpAddress: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_RegisterPeer"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
