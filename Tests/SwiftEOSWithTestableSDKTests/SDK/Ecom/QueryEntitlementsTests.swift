import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_QueryEntitlementsTests: XCTestCase {
    public func testEOS_Ecom_QueryEntitlements_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_QueryEntitlements = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.EntitlementNames)
            XCTAssertEqual(Options!.pointee.EntitlementNameCount, .zero)
            XCTAssertEqual(Options!.pointee.bIncludeRedeemed, .zero)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Ecom_QueryEntitlements") }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryEntitlements(
            LocalUserId: nil,
            EntitlementNames: nil,
            bIncludeRedeemed: false,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_QueryEntitlements"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
