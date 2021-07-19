import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogGameRoundEndTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogGameRoundEnd_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogGameRoundEnd = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.WinningTeamId, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogGameRoundEnd")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogGameRoundEnd(WinningTeamId: .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogGameRoundEnd"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
