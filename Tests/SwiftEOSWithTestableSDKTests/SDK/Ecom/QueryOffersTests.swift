import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_QueryOffersTests: XCTestCase {
    public func testEOS_Ecom_QueryOffers_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_QueryOffers = { Handle, Options, ClientData, CompletionDelegate in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.OverrideCatalogNamespace)
            XCTAssertNil(ClientData)
            CompletionDelegate?(nil)
            TestGlobals.sdkReceived.append("EOS_Ecom_QueryOffers") }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryOffers(
            LocalUserId: nil,
            OverrideCatalogNamespace: nil,
            CompletionDelegate: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("CompletionDelegate") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_QueryOffers"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionDelegate"])
    }
}
