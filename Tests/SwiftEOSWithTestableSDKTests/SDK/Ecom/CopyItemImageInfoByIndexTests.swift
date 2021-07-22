import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Ecom_CopyItemImageInfoByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyItemImageInfoByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyItemImageInfoByIndex = { Handle, Options, OutImageInfo in
                GTest.current.sdkReceived.append("EOS_Ecom_CopyItemImageInfoByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYITEMIMAGEINFOBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ItemId)
                XCTAssertEqual(Options!.pointee.ImageInfoIndex, .zero)
                XCTAssertNotNil(OutImageInfo)
                return .zero
            }
            defer { __on_EOS_Ecom_CopyItemImageInfoByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyItemImageInfoByIndex(
                    LocalUserId: nil,
                    ItemId: nil,
                    ImageInfoIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyItemImageInfoByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Ecom_CopyItemImageInfoByIndex"])
    }
}
