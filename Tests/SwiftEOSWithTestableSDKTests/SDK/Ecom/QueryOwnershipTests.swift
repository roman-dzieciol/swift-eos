import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_QueryOwnershipTests: XCTestCase {
    public func testEOS_Ecom_QueryOwnership_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_QueryOwnership = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.CatalogItemIds)
            XCTAssertEqual(Options!.pointee.CatalogItemIdCount, .zero)
            XCTAssertNil(Options!.pointee.CatalogNamespace)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Ecom_QueryOwnership") }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryOwnership(
            LocalUserId: nil,
            CatalogItemIds: nil,
            CatalogNamespace: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.ItemOwnership)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_QueryOwnership"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
