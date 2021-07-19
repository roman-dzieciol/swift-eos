import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_GetProtectMessageOutputLengthTests: XCTestCase {
    public func testEOS_AntiCheatServer_GetProtectMessageOutputLength_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_GetProtectMessageOutputLength = { Handle, Options, OutBufferLengthBytes in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
            XCTAssertNil(OutBufferLengthBytes)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_GetProtectMessageOutputLength")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int? = try object.GetProtectMessageOutputLength(DataLengthBytes: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_GetProtectMessageOutputLength"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
