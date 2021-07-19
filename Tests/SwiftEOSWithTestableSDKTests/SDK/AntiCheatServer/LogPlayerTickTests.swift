import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerTickTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerTick_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogPlayerTick = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.PlayerHandle)
            XCTAssertNil(Options!.pointee.PlayerPosition)
            XCTAssertNil(Options!.pointee.PlayerViewRotation)
            XCTAssertEqual(Options!.pointee.bIsPlayerViewZoomed, .zero)
            XCTAssertEqual(Options!.pointee.PlayerHealth, .zero)
            XCTAssertEqual(Options!.pointee.PlayerMovementState, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogPlayerTick")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogPlayerTick(
            PlayerHandle: nil,
            PlayerPosition: nil,
            PlayerViewRotation: nil,
            bIsPlayerViewZoomed: false,
            PlayerHealth: .zero,
            PlayerMovementState: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogPlayerTick"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
