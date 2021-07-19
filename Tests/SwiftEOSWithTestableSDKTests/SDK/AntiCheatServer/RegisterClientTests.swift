import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_RegisterClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_RegisterClient_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_RegisterClient = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ClientHandle)
            XCTAssertEqual(Options!.pointee.ClientType, .init(rawValue: .zero)!)
            XCTAssertEqual(Options!.pointee.ClientPlatform, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.AccountId)
            XCTAssertNil(Options!.pointee.IpAddress)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_RegisterClient")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RegisterClient(
            ClientHandle: nil,
            ClientType: .init(rawValue: .zero)!,
            ClientPlatform: .init(rawValue: .zero)!,
            AccountId: nil,
            IpAddress: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_RegisterClient"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
