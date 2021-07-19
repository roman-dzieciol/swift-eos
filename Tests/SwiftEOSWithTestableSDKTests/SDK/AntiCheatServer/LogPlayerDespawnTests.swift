import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerDespawnTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerDespawn_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogPlayerDespawn = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.DespawnedPlayerHandle)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogPlayerDespawn")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogPlayerDespawn(DespawnedPlayerHandle: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogPlayerDespawn"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
