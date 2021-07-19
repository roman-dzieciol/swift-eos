import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAdmin_QueryJoinRoomTokenTests: XCTestCase {
    public func testEOS_RTCAdmin_QueryJoinRoomToken_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAdmin_QueryJoinRoomToken = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(Options!.pointee.TargetUserIds)
            XCTAssertEqual(Options!.pointee.TargetUserIdsCount, .zero)
            XCTAssertNil(Options!.pointee.TargetUserIpAddresses)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTCAdmin_QueryJoinRoomToken") }
        let object: SwiftEOS_RTCAdmin_Actor = SwiftEOS_RTCAdmin_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryJoinRoomToken(
            LocalUserId: nil,
            RoomName: nil,
            TargetUserIds: nil,
            TargetUserIpAddresses: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.RoomName)
                XCTAssertNil(arg0.ClientBaseUrl)
                XCTAssertEqual(arg0.QueryId, .zero)
                XCTAssertEqual(arg0.TokenCount, .zero)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAdmin_QueryJoinRoomToken"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
