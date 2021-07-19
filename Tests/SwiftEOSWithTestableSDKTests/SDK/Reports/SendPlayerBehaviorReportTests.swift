import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Reports_SendPlayerBehaviorReportTests: XCTestCase {
    public func testEOS_Reports_SendPlayerBehaviorReport_Null() throws {
        TestGlobals.reset()
        __on_EOS_Reports_SendPlayerBehaviorReport = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.ReporterUserId)
            XCTAssertNil(Options!.pointee.ReportedUserId)
            XCTAssertEqual(Options!.pointee.Category, .init(rawValue: .zero)!)
            XCTAssertNil(Options!.pointee.Message)
            XCTAssertNil(Options!.pointee.Context)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Reports_SendPlayerBehaviorReport") }
        let object: SwiftEOS_Reports_Actor = SwiftEOS_Reports_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SendPlayerBehaviorReport(
            ReporterUserId: nil,
            ReportedUserId: nil,
            Category: .init(rawValue: .zero)!,
            Message: nil,
            Context: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Reports_SendPlayerBehaviorReport"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
