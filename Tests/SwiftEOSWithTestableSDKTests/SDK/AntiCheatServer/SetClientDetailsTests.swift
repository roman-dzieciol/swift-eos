import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_SetClientDetailsTests: XCTestCase {
    public func testEOS_AntiCheatServer_SetClientDetails_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_SetClientDetails = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ClientHandle)
            XCTAssertEqual(Options!.pointee.ClientFlags, .init(rawValue: .zero)!)
            XCTAssertEqual(Options!.pointee.ClientInputMethod, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_SetClientDetails")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetClientDetails(
            ClientHandle: nil,
            ClientFlags: .init(rawValue: .zero)!,
            ClientInputMethod: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_SetClientDetails"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
