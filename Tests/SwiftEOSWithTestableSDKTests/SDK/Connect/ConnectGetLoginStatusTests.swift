import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetLoginStatusTests: XCTestCase {
    public func testEOS_Connect_GetLoginStatus_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_GetLoginStatus = { Handle, LocalUserId in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertNil(LocalUserId)
            TestGlobals.sdkReceived.append("EOS_Connect_GetLoginStatus")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_ELoginStatus = object.GetLoginStatus(LocalUserId: OpaquePointer(bitPattern: Int(1))!)
        XCTAssertEqual(result, .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_GetLoginStatus"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
