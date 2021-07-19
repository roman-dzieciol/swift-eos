import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_SetMaxResultsTests: XCTestCase {
    public func testEOS_SessionSearch_SetMaxResults_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionSearch_SetMaxResults = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.MaxSearchResults, .zero)
            TestGlobals.sdkReceived.append("EOS_SessionSearch_SetMaxResults")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetMaxResults(MaxSearchResults: .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionSearch_SetMaxResults"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
