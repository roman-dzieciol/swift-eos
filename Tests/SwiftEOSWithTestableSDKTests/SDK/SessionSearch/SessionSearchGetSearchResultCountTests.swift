import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_GetSearchResultCountTests: XCTestCase {
    public func testEOS_SessionSearch_GetSearchResultCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionSearch_GetSearchResultCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_SessionSearch_GetSearchResultCount")
            return .zero }
        let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetSearchResultCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionSearch_GetSearchResultCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
