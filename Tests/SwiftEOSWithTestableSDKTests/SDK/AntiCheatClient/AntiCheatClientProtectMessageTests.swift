import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_ProtectMessageTests: XCTestCase {
    public func testEOS_AntiCheatClient_ProtectMessage_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_ProtectMessage = { Handle, Options, OutBuffer, OutBufferLengthBytes in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
            XCTAssertNil(Options!.pointee.Data)
            XCTAssertEqual(Options!.pointee.OutBufferSizeBytes, .zero)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(OutBufferLengthBytes)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_ProtectMessage")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: [UInt8]? = try object.ProtectMessage(
            Data: nil,
            OutBufferSizeBytes: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_ProtectMessage"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
