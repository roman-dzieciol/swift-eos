import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Ecom_CopyItemImageInfoByIndexTests: XCTestCase {
    public func testEOS_Ecom_CopyItemImageInfoByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Ecom_CopyItemImageInfoByIndex = { Handle, Options, OutImageInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ECOM_COPYITEMIMAGEINFOBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.ItemId)
                XCTAssertEqual(Options!.pointee.ImageInfoIndex, .zero)
                XCTAssertNil(OutImageInfo)
                TestGlobals.current.sdkReceived.append("EOS_Ecom_CopyItemImageInfoByIndex")
                return .zero
            }
            defer { __on_EOS_Ecom_CopyItemImageInfoByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Ecom_Actor = SwiftEOS_Ecom_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Ecom_KeyImageInfo? = try object.CopyItemImageInfoByIndex(
                LocalUserId: nil,
                ItemId: nil,
                ImageInfoIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Ecom_CopyItemImageInfoByIndex"])
            XCTAssertNil(result)
        }
    }
}
