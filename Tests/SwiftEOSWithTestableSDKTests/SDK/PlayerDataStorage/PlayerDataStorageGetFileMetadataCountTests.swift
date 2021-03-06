import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorage_GetFileMetadataCountTests: XCTestCase {
    public func testEOS_PlayerDataStorage_GetFileMetadataCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_GetFileMetadataCount = { Handle, GetFileMetadataCountOptions, OutFileMetadataCount in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_GetFileMetadataCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(GetFileMetadataCountOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST)
                XCTAssertNil(GetFileMetadataCountOptions!.pointee.LocalUserId)
                XCTAssertNotNil(OutFileMetadataCount)
                return .zero
            }
            defer { __on_EOS_PlayerDataStorage_GetFileMetadataCount = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetFileMetadataCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_GetFileMetadataCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_GetFileMetadataCount"])
    }
}
