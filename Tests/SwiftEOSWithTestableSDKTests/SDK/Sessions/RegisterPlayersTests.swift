import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_RegisterPlayersTests: XCTestCase {
    public func testEOS_Sessions_RegisterPlayers_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_RegisterPlayers = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionName)
            XCTAssertNil(Options!.pointee.PlayersToRegister)
            XCTAssertEqual(Options!.pointee.PlayersToRegisterCount, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Sessions_RegisterPlayers") }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RegisterPlayers(
            SessionName: nil,
            PlayersToRegister: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_RegisterPlayers"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}