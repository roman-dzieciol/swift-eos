import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetLoggedInUsersCountTests: XCTestCase {
    public func testEOS_Connect_GetLoggedInUsersCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_GetLoggedInUsersCount = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_Connect_GetLoggedInUsersCount")
            return .zero }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetLoggedInUsersCount()
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_GetLoggedInUsersCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
