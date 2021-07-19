import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerReviveTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerRevive_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogPlayerRevive = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.RevivedPlayerHandle)
            XCTAssertNil(Options!.pointee.ReviverPlayerHandle)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogPlayerRevive")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogPlayerRevive(
            RevivedPlayerHandle: nil,
            ReviverPlayerHandle: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogPlayerRevive"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
