import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyAttributeByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyAttributeByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_CopyAttributeByIndex = { Handle, Options, OutAttribute in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.AttrIndex, .zero)
            XCTAssertNil(OutAttribute)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_CopyAttributeByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Lobby_Attribute? = try object.CopyAttributeByIndex(AttrIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_CopyAttributeByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
