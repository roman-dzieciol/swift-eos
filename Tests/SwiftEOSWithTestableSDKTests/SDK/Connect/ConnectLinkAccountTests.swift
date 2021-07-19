import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_LinkAccountTests: XCTestCase {
    public func testEOS_Connect_LinkAccount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Connect_LinkAccount = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.ContinuanceToken)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Connect_LinkAccount") }
        let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.LinkAccount(
            LocalUserId: nil,
            ContinuanceToken: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Connect_LinkAccount"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
