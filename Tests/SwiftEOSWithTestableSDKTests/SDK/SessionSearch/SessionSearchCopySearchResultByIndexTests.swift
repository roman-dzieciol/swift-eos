import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_CopySearchResultByIndexTests: XCTestCase {
    public func testEOS_SessionSearch_CopySearchResultByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionSearch_CopySearchResultByIndex = { Handle, Options, OutSessionHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.SessionIndex, .zero)
            XCTAssertNil(OutSessionHandle)
            TestGlobals.sdkReceived.append("EOS_SessionSearch_CopySearchResultByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HSessionDetails? = try object.CopySearchResultByIndex(SessionIndex: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionSearch_CopySearchResultByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
