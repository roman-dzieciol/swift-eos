import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyOfferByIndex = { Handle, Options, OutOffer in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.OfferIndex, .zero)
            XCTAssertNil(OutOffer)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyOfferByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_CatalogOffer? = try object.CopyOfferByIndex(
            LocalUserId: nil,
            OfferIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyOfferByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
