import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_GetSearchResultCountTests: XCTestCase {
    public func testEOS_LobbySearch_GetSearchResultCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbySearch_GetSearchResultCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbySearch_GetSearchResultCount")
            return .zero }
        let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetSearchResultCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbySearch_GetSearchResultCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
