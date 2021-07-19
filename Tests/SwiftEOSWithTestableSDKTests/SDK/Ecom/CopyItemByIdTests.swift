import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyItemByIdTests: XCTestCase {
    public func testEOS_Ecom_CopyItemById_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyItemById = { Handle, Options, OutItem in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYITEMBYID_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ItemId)
                XCTAssertNil(OutItem)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyItemById")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyItemById = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_CatalogItem? = try object.CopyItemById(
                LocalUserId: nil,
                ItemId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyItemById"])
            XCTAssertNil(result)
        }
    }
}
