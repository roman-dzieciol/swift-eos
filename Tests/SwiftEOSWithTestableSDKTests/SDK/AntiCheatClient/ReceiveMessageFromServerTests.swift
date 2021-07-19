import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_ReceiveMessageFromServerTests: XCTestCase {
    public func testEOS_AntiCheatClient_ReceiveMessageFromServer_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_ReceiveMessageFromServer = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
            XCTAssertNil(Options!.pointee.Data)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_ReceiveMessageFromServer")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.ReceiveMessageFromServer(Data: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_ReceiveMessageFromServer"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
