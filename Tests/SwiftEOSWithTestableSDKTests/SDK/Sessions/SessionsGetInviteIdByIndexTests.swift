import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_GetInviteIdByIndexTests: XCTestCase {
    public func testEOS_Sessions_GetInviteIdByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_GetInviteIdByIndex = { Handle, Options, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.Index, .zero)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Sessions_GetInviteIdByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetInviteIdByIndex(
            LocalUserId: nil,
            Index: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_GetInviteIdByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
