import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_CopySearchResultByIndexTests: XCTestCase {
    public func testEOS_LobbySearch_CopySearchResultByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbySearch_CopySearchResultByIndex = { Handle, Options, OutLobbyDetailsHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.LobbyIndex, .zero)
            XCTAssertNil(OutLobbyDetailsHandle)
            TestGlobals.sdkReceived.append("EOS_LobbySearch_CopySearchResultByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HLobbyDetails? = try object.CopySearchResultByIndex(LobbyIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbySearch_CopySearchResultByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
