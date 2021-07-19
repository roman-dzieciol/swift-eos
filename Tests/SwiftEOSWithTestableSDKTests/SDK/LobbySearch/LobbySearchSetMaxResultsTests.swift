import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_SetMaxResultsTests: XCTestCase {
    public func testEOS_LobbySearch_SetMaxResults_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbySearch_SetMaxResults = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.MaxResults, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbySearch_SetMaxResults")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetMaxResults(MaxResults: .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbySearch_SetMaxResults"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
