import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_LogPlayerUseWeaponTests: XCTestCase {
    public func testEOS_AntiCheatServer_LogPlayerUseWeapon_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_LogPlayerUseWeapon = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UseWeaponData)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_LogPlayerUseWeapon")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LogPlayerUseWeapon(UseWeaponData: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_LogPlayerUseWeapon"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
