import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_PollStatusTests: XCTestCase {
    public func testEOS_AntiCheatClient_PollStatus_Null() throws {
        TestGlobals.reset()
        var ViolationType: EOS_EAntiCheatClientViolationType? = nil
        var OutMessage: String? = nil
        __on_EOS_AntiCheatClient_PollStatus = { Handle, Options, ViolationType, OutMessage in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.OutMessageLength, .zero)
            XCTAssertNil(ViolationType)
            XCTAssertNil(OutMessage)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_PollStatus")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.PollStatus(
            OutMessageLength: .zero,
            ViolationType: &ViolationType,
            OutMessage: &OutMessage
        )
        XCTAssertNil(ViolationType)
        XCTAssertNil(OutMessage)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_PollStatus"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
