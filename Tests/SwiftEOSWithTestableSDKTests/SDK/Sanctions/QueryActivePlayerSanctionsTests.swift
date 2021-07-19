import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sanctions_QueryActivePlayerSanctionsTests: XCTestCase {
    public func testEOS_Sanctions_QueryActivePlayerSanctions_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sanctions_QueryActivePlayerSanctions = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Sanctions_QueryActivePlayerSanctions") }
        let object: SwiftEOS_Sanctions_Actor = SwiftEOS_Sanctions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryActivePlayerSanctions(
            TargetUserId: nil,
            LocalUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.TargetUserId)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sanctions_QueryActivePlayerSanctions"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
