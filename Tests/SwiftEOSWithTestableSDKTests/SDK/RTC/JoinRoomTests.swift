import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_JoinRoomTests: XCTestCase {
    public func testEOS_RTC_JoinRoom_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTC_JoinRoom = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(Options!.pointee.ClientBaseUrl)
            XCTAssertNil(Options!.pointee.ParticipantToken)
            XCTAssertNil(Options!.pointee.ParticipantId)
            XCTAssertEqual(Options!.pointee.Flags, .zero)
            XCTAssertEqual(Options!.pointee.bManualAudioInputEnabled, .zero)
            XCTAssertEqual(Options!.pointee.bManualAudioOutputEnabled, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTC_JoinRoom") }
        let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.JoinRoom(
            LocalUserId: nil,
            RoomName: nil,
            ClientBaseUrl: nil,
            ParticipantToken: nil,
            ParticipantId: nil,
            Flags: .zero,
            bManualAudioInputEnabled: false,
            bManualAudioOutputEnabled: false,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RoomName)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTC_JoinRoom"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
