import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_GetFileMetadataCountTests: XCTestCase {
    public func testEOS_PlayerDataStorage_GetFileMetadataCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_GetFileMetadataCount = { Handle, GetFileMetadataCountOptions, OutFileMetadataCount in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(GetFileMetadataCountOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_GETFILEMETADATACOUNTOPTIONS_API_LATEST)
                XCTAssertNil(GetFileMetadataCountOptions!.pointee.LocalUserId)
                XCTAssertNil(OutFileMetadataCount)
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorage_GetFileMetadataCount")
                return .zero
            }
            defer { __on_EOS_PlayerDataStorage_GetFileMetadataCount = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int? = try object.GetFileMetadataCount(LocalUserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorage_GetFileMetadataCount"])
            XCTAssertNil(result)
        }
    }
}
