import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_SetPresenceTests: XCTestCase {
    public func testEOS_Presence_SetPresence_Null() throws {
        TestGlobals.reset()
        __on_EOS_Presence_SetPresence = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.PresenceModificationHandle)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Presence_SetPresence") }
        let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetPresence(
            LocalUserId: nil,
            PresenceModificationHandle: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Presence_SetPresence"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
