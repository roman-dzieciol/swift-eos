import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_UpdateReceivingTests: XCTestCase {
    public func testEOS_RTCAudio_UpdateReceiving_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_UpdateReceiving = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(Options!.pointee.ParticipantId)
            XCTAssertEqual(Options!.pointee.bAudioEnabled, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_UpdateReceiving") }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.UpdateReceiving(
            LocalUserId: nil,
            RoomName: nil,
            ParticipantId: nil,
            bAudioEnabled: false,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RoomName)
                XCTAssertNil(arg0.ParticipantId)
                XCTAssertEqual(arg0.bAudioEnabled, false)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_UpdateReceiving"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
