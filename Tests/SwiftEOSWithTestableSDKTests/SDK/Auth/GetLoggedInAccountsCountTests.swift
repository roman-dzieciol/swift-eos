import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_GetLoggedInAccountsCountTests: XCTestCase {
    public func testEOS_Auth_GetLoggedInAccountsCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_GetLoggedInAccountsCount = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Auth_GetLoggedInAccountsCount")
            return .zero }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetLoggedInAccountsCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_GetLoggedInAccountsCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
