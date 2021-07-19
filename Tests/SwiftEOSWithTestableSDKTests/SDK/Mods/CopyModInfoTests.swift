import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Mods_CopyModInfoTests: XCTestCase {
    public func testEOS_Mods_CopyModInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_Mods_CopyModInfo = { Handle, Options, OutEnumeratedMods in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Type, .init(rawValue: .zero)!)
            XCTAssertNil(OutEnumeratedMods)
            TestGlobals.sdkReceived.append("EOS_Mods_CopyModInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Mods_ModInfo? = try object.CopyModInfo(
            LocalUserId: nil,
            `Type`: .init(rawValue: .zero)!
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Mods_CopyModInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
