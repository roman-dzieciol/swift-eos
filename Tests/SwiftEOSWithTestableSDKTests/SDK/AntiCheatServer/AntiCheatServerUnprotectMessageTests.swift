import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_UnprotectMessageTests: XCTestCase {
    public func testEOS_AntiCheatServer_UnprotectMessage_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_UnprotectMessage = { Handle, Options, OutBuffer, OutBufferLengthBytes in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ClientHandle)
            XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
            XCTAssertNil(Options!.pointee.Data)
            XCTAssertEqual(Options!.pointee.OutBufferSizeBytes, .zero)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(OutBufferLengthBytes)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_UnprotectMessage")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: [UInt8]? = try object.UnprotectMessage(
            ClientHandle: nil,
            Data: nil,
            OutBufferSizeBytes: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_UnprotectMessage"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
