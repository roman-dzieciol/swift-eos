import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyItemReleaseByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyItemReleaseByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyItemReleaseByIndex = { Handle, Options, OutRelease in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYITEMRELEASEBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ItemId)
                XCTAssertEqual(Options!.pointee.ReleaseIndex, .zero)
                XCTAssertNotNil(OutRelease)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyItemReleaseByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyItemReleaseByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_CatalogRelease? = try object.CopyItemReleaseByIndex(
                LocalUserId: nil,
                ItemId: nil,
                ReleaseIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyItemReleaseByIndex"])
            XCTAssertNil(result)
        }
    }
}
