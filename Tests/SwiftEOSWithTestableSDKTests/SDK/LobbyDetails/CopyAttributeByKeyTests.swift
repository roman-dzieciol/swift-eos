import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyAttributeByKeyTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyAttributeByKey_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_CopyAttributeByKey = { Handle, Options, OutAttribute in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.AttrKey)
            XCTAssertNil(OutAttribute)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_CopyAttributeByKey")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Lobby_Attribute? = try object.CopyAttributeByKey(AttrKey: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_CopyAttributeByKey"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}