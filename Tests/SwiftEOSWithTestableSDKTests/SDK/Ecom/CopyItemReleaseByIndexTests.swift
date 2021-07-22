import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_CopyItemReleaseByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyItemReleaseByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyItemReleaseByIndex = { Handle, Options, OutRelease in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyItemReleaseByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYITEMRELEASEBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ItemId)
                XCTAssertEqual(Options!.pointee.ReleaseIndex, .zero)
                XCTAssertNotNil(OutRelease)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyItemReleaseByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyItemReleaseByIndex(
                    LocalUserId: nil,
                    ItemId: nil,
                    ReleaseIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyItemReleaseByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyItemReleaseByIndex"])
    }
}
