import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CreateSessionSearchTests: XCTestCase {
    public func testEOS_Sessions_CreateSessionSearch_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_CreateSessionSearch = { Handle, Options, OutSessionSearchHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.MaxSearchResults, .zero)
            XCTAssertNil(OutSessionSearchHandle)
            TestGlobals.sdkReceived.append("EOS_Sessions_CreateSessionSearch")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HSessionSearch? = try object.CreateSessionSearch(MaxSearchResults: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_CreateSessionSearch"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
