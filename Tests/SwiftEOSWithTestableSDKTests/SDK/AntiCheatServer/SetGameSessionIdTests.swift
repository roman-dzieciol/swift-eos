import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_SetGameSessionIdTests: XCTestCase {
    public func testEOS_AntiCheatServer_SetGameSessionId_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_SetGameSessionId = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.GameSessionId)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_SetGameSessionId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetGameSessionId(GameSessionId: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_SetGameSessionId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
