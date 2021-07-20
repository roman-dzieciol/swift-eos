import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameTests: XCTestCase {
    public func testEOS_PlayerDataStorage_CopyFileMetadataByFilename_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_CopyFileMetadataByFilename = { Handle, CopyFileMetadataOptions, OutMetadata in
                XCTAssertNil(Handle)
                XCTAssertEqual(CopyFileMetadataOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST)
                XCTAssertNil(CopyFileMetadataOptions!.pointee.LocalUserId)
                XCTAssertNil(CopyFileMetadataOptions!.pointee.Filename)
                XCTAssertNotNil(OutMetadata)
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_CopyFileMetadataByFilename")
                return .zero
            }
            defer { __on_EOS_PlayerDataStorage_CopyFileMetadataByFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_PlayerDataStorage_FileMetadata? = try object.CopyFileMetadataByFilename(
                LocalUserId: nil,
                Filename: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataByFilename"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataByFilename"])
    }
}
