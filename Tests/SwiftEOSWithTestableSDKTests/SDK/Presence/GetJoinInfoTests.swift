import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_GetJoinInfoTests: XCTestCase {
    public func testEOS_Presence_GetJoinInfo_Null() throws {
        TestGlobals.reset()
        __on_EOS_Presence_GetJoinInfo = { Handle, Options, OutBuffer, InOutBufferLength in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(OutBuffer)
            XCTAssertNil(InOutBufferLength)
            TestGlobals.sdkReceived.append("EOS_Presence_GetJoinInfo")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: String? = try object.GetJoinInfo(
            LocalUserId: nil,
            TargetUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Presence_GetJoinInfo"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
