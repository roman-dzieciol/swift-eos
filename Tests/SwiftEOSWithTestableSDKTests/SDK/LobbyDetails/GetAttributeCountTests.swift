import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_GetAttributeCountTests: XCTestCase {
    public func testEOS_LobbyDetails_GetAttributeCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyDetails_GetAttributeCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbyDetails_GetAttributeCount")
            return .zero }
        let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetAttributeCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyDetails_GetAttributeCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
