import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_ReceiveMessageFromClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_ReceiveMessageFromClient_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_ReceiveMessageFromClient = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ClientHandle)
            XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
            XCTAssertNil(Options!.pointee.Data)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_ReceiveMessageFromClient")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.ReceiveMessageFromClient(
            ClientHandle: nil,
            Data: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_ReceiveMessageFromClient"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
