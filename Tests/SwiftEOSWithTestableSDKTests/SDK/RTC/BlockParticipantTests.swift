import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTC_BlockParticipantTests: XCTestCase {
    public func testEOS_RTC_BlockParticipant_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTC_BlockParticipant = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(Options!.pointee.ParticipantId)
            XCTAssertEqual(Options!.pointee.bBlocked, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_RTC_BlockParticipant") }
        let object: SwiftEOS_RTC_Actor = SwiftEOS_RTC_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.BlockParticipant(
            LocalUserId: nil,
            RoomName: nil,
            ParticipantId: nil,
            bBlocked: false,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RoomName)
                XCTAssertNil(arg0.ParticipantId)
                XCTAssertEqual(arg0.bBlocked, false)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTC_BlockParticipant"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
