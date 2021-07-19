import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_GetFriendsCountTests: XCTestCase {
    public func testEOS_Friends_GetFriendsCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Friends_GetFriendsCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_Friends_GetFriendsCount")
            return .zero }
        let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetFriendsCount(LocalUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Friends_GetFriendsCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
