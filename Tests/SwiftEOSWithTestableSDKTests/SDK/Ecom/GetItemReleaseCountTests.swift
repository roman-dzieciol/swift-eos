import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_GetItemReleaseCountTests: XCTestCase {
    public func testEOS_Ecom_GetItemReleaseCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_GetItemReleaseCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_GETITEMRELEASECOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ItemId)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_GetItemReleaseCount")
                return .zero
            }
            defer { __on_EOS_Ecom_GetItemReleaseCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetItemReleaseCount(
                LocalUserId: nil,
                ItemId: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_GetItemReleaseCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
