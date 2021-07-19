import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetPermissionLevelTests: XCTestCase {
    public func testEOS_LobbyModification_SetPermissionLevel_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_SetPermissionLevel = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.PermissionLevel, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_SetPermissionLevel")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetPermissionLevel(PermissionLevel: .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_SetPermissionLevel"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
