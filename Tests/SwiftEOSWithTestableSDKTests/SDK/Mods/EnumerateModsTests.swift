import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Mods_EnumerateModsTests: XCTestCase {
    public func testEOS_Mods_EnumerateMods_Null() throws {
        TestGlobals.reset()
        __on_EOS_Mods_EnumerateMods = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Type, .init(rawValue: .zero)!)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Mods_EnumerateMods") }
        let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.EnumerateMods(
            LocalUserId: nil,
            `Type`: .init(rawValue: .zero)!,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.Type, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Mods_EnumerateMods"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
