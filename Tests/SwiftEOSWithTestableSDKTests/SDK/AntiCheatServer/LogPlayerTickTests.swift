import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerTickTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerTick_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_AntiCheatServer_LogPlayerTick = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.PlayerHandle)
                XCTAssertNil(Options!.pointee.PlayerPosition)
                XCTAssertNil(Options!.pointee.PlayerViewRotation)
                XCTAssertEqual(Options!.pointee.bIsPlayerViewZoomed, .zero)
                XCTAssertEqual(Options!.pointee.PlayerHealth, .zero)
                XCTAssertEqual(Options!.pointee.PlayerMovementState, .zero)
                TestGlobals.current.sdkReceived.append("EOS_AntiCheatServer_LogPlayerTick")
                return .zero
            }
            defer { __on_EOS_AntiCheatServer_LogPlayerTick = nil }
            
            // Given Actor
            let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.LogPlayerTick(
                PlayerHandle: nil,
                PlayerPosition: nil,
                PlayerViewRotation: nil,
                bIsPlayerViewZoomed: false,
                PlayerHealth: .zero,
                PlayerMovementState: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_AntiCheatServer_LogPlayerTick"])
        }
    }
}
