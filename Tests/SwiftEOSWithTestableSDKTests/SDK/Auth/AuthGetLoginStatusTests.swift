import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Auth_GetLoginStatusTests: XCTestCase {
    public func testEOS_Auth_GetLoginStatus_Null() throws {
        TestGlobals.reset()
        __on_EOS_Auth_GetLoginStatus = { Handle, LocalUserId in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(LocalUserId)
            TestGlobals.sdkReceived.append("EOS_Auth_GetLoginStatus")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Auth_Actor = SwiftEOS_Auth_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ELoginStatus = object.GetLoginStatus(LocalUserId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertEqual(result, .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Auth_GetLoginStatus"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
