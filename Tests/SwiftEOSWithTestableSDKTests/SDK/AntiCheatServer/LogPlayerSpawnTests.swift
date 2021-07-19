import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerSpawnTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerSpawn_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogPlayerSpawn = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SpawnedPlayerHandle)
            XCTAssertEqual(Options!.pointee.TeamId, .zero)
            XCTAssertEqual(Options!.pointee.CharacterId, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogPlayerSpawn")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogPlayerSpawn(
            SpawnedPlayerHandle: nil,
            TeamId: .zero,
            CharacterId: .zero
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogPlayerSpawn"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
