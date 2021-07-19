import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_RTCAudio_SendAudioTests: XCTestCase {
    public func testEOS_RTCAudio_SendAudio_Null() throws {
        TestGlobals.reset()
        __on_EOS_RTCAudio_SendAudio = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RoomName)
            XCTAssertNil(Options!.pointee.Buffer)
            TestGlobals.sdkReceived.append("EOS_RTCAudio_SendAudio")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_RTCAudio_Actor = SwiftEOS_RTCAudio_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SendAudio(
            LocalUserId: nil,
            RoomName: nil,
            Buffer: nil
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_RTCAudio_SendAudio"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
