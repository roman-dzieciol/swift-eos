import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyOfferItemByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyOfferItemByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyOfferItemByIndex = { Handle, Options, OutItem in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.OfferId)
            XCTAssertEqual(Options!.pointee.ItemIndex, .zero)
            XCTAssertNil(OutItem)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyOfferItemByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_CatalogItem? = try object.CopyOfferItemByIndex(
            LocalUserId: nil,
            OfferId: nil,
            ItemIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyOfferItemByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
