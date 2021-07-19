import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogGameRoundStartTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogGameRoundStart_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogGameRoundStart = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionIdentifier)
            XCTAssertNil(Options!.pointee.LevelName)
            XCTAssertNil(Options!.pointee.ModeName)
            XCTAssertEqual(Options!.pointee.RoundTimeSeconds, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogGameRoundStart")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogGameRoundStart(
            SessionIdentifier: nil,
            LevelName: nil,
            ModeName: nil,
            RoundTimeSeconds: .zero
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogGameRoundStart"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
