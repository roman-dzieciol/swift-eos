import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyItemByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyItemById_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyItemById = { Handle, Options, OutItem in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.ItemId)
            XCTAssertNil(OutItem)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyItemById")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_CatalogItem? = try object.CopyItemById(
            LocalUserId: nil,
            ItemId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyItemById"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
