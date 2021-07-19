import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_QueryStatsTests: XCTestCase {
    public func testEOS_Stats_QueryStats_Null() throws {
        TestGlobals.reset()
        __on_EOS_Stats_QueryStats = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.StartTime, .zero)
            XCTAssertEqual(Options!.pointee.EndTime, .zero)
            XCTAssertNil(Options!.pointee.StatNames)
            XCTAssertEqual(Options!.pointee.StatNamesCount, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Stats_QueryStats") }
        let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryStats(
            LocalUserId: nil,
            StartTime: .zero,
            EndTime: .zero,
            StatNames: nil,
            TargetUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Stats_QueryStats"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
