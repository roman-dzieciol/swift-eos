import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerSpawnTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerSpawn_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerSpawn = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ANTICHEATCOMMON_LOGPLAYERSPAWN_API_LATEST)
                XCTAssertNil(Options!.pointee.SpawnedPlayerHandle)
                XCTAssertEqual(Options!.pointee.TeamId, .zero)
                XCTAssertEqual(Options!.pointee.CharacterId, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerSpawn")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerSpawn = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LogPlayerSpawn(
                SpawnedPlayerHandle: nil,
                TeamId: .zero,
                CharacterId: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerSpawn"])
        }
    }
}
