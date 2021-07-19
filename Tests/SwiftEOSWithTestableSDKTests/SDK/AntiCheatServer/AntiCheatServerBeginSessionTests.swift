import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_BeginSessionTests: XCTestCase {
    public func testEOS_AntiCheatServer_BeginSession_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_BeginSession = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.RegisterTimeoutSeconds, .zero)
            XCTAssertNil(Options!.pointee.ServerName)
            XCTAssertEqual(Options!.pointee.bEnableGameplayData, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_BeginSession")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.BeginSession(
            RegisterTimeoutSeconds: .zero,
            ServerName: nil,
            bEnableGameplayData: false,
            LocalUserId: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_BeginSession"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
