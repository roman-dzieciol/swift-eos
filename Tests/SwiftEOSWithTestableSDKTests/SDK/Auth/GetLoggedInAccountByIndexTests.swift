import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_GetLoggedInAccountByIndexTests: XCTestCase {
    public func testEOS_Auth_GetLoggedInAccountByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_GetLoggedInAccountByIndex = { Handle, Index in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Index, .zero)
            TestGlobals.sdkReceived.append("EOS_Auth_GetLoggedInAccountByIndex")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_EpicAccountId = try object.GetLoggedInAccountByIndex(Index: .zero)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_GetLoggedInAccountByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
