import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_SetClientNetworkStateTests: XCTestCase {
    public func testEOS_AntiCheatServer_SetClientNetworkState_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_SetClientNetworkState = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ClientHandle)
            XCTAssertEqual(Options!.pointee.bIsNetworkActive, .zero)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_SetClientNetworkState")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetClientNetworkState(
            ClientHandle: nil,
            bIsNetworkActive: false
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_SetClientNetworkState"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
