import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_IngestStatTests: XCTestCase {
    public func testEOS_Stats_IngestStat_Null() throws {
        TestGlobals.reset()
        __on_EOS_Stats_IngestStat = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.Stats)
            XCTAssertEqual(Options!.pointee.StatsCount, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Stats_IngestStat") }
        let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.IngestStat(
            LocalUserId: nil,
            Stats: nil,
            TargetUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Stats_IngestStat"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
