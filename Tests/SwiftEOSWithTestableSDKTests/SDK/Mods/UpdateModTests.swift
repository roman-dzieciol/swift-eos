import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Mods_UpdateModTests: XCTestCase {
    public func testEOS_Mods_UpdateMod_Null() throws {
        TestGlobals.reset()
        __on_EOS_Mods_UpdateMod = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.Mod)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Mods_UpdateMod") }
        let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.UpdateMod(
            LocalUserId: nil,
            Mod: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.Mod)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Mods_UpdateMod"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
