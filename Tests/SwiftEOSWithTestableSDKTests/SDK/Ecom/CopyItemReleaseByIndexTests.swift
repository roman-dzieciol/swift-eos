import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyItemReleaseByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyItemReleaseByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Ecom_CopyItemReleaseByIndex = { Handle, Options, OutRelease in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.ItemId)
            XCTAssertEqual(Options!.pointee.ReleaseIndex, .zero)
            XCTAssertNil(OutRelease)
            TestGlobals.sdkReceived.append("EOS_Ecom_CopyItemReleaseByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Ecom_CatalogRelease? = try object.CopyItemReleaseByIndex(
            LocalUserId: nil,
            ItemId: nil,
            ReleaseIndex: .zero
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Ecom_CopyItemReleaseByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
