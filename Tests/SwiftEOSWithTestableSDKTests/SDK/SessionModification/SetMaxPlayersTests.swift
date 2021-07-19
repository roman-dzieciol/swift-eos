import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetMaxPlayersTests: XCTestCase {
    public func testEOS_SessionModification_SetMaxPlayers_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_SetMaxPlayers = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.MaxPlayers, .zero)
            TestGlobals.sdkReceived.append("EOS_SessionModification_SetMaxPlayers")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetMaxPlayers(MaxPlayers: .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_SetMaxPlayers"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
