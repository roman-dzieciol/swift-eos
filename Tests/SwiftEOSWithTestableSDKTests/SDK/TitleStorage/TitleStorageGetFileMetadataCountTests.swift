import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_TitleStorage_GetFileMetadataCountTests: XCTestCase {
    public func testEOS_TitleStorage_GetFileMetadataCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_GetFileMetadataCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_TitleStorage_GetFileMetadataCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                return .zero
            }
            defer { __on_EOS_TitleStorage_GetFileMetadataCount = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetFileMetadataCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_GetFileMetadataCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_GetFileMetadataCount"])
    }
}
