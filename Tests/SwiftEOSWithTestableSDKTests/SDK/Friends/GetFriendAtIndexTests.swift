import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_GetFriendAtIndexTests: XCTestCase {
    public func testEOS_Friends_GetFriendAtIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Friends_GetFriendAtIndex = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Index, .zero)
            TestGlobals.sdkReceived.append("EOS_Friends_GetFriendAtIndex")
            return OpaquePointer(bitPattern: Int(1))! }
        let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_EpicAccountId = try object.GetFriendAtIndex(
            LocalUserId: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Friends_GetFriendAtIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
