import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetLoggedInUserByIndexTests: XCTestCase {
    public func testEOS_Connect_GetLoggedInUserByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_GetLoggedInUserByIndex = { Handle, Index in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Index, .zero)
            TestGlobals.sdkReceived.append("EOS_Connect_GetLoggedInUserByIndex")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ProductUserId = try object.GetLoggedInUserByIndex(Index: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_GetLoggedInUserByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
