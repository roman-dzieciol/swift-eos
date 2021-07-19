import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_RejectInviteTests: XCTestCase {
    public func testEOS_Friends_RejectInvite_Null() throws {
        TestGlobals.reset()
        __on_EOS_Friends_RejectInvite = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Friends_RejectInvite") }
        let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RejectInvite(
            LocalUserId: nil,
            TargetUserId: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Friends_RejectInvite"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
