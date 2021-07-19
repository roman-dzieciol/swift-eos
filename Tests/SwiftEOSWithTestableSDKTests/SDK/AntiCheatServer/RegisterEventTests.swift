import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_RegisterEventTests: XCTestCase {
    public func testEOS_AntiCheatServer_RegisterEvent_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_RegisterEvent = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.EventId, .zero)
            XCTAssertNil(Options!.pointee.EventName)
            XCTAssertEqual(Options!.pointee.EventType, .init(rawValue: .zero)!)
            XCTAssertEqual(Options!.pointee.ParamDefsCount, .zero)
            XCTAssertNil(Options!.pointee.ParamDefs)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_RegisterEvent")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RegisterEvent(
            EventId: .zero,
            EventName: nil,
            EventType: .init(rawValue: .zero)!,
            ParamDefs: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_RegisterEvent"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
