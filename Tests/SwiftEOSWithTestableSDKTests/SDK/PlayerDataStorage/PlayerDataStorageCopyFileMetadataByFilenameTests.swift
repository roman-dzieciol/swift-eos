import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameTests: XCTestCase {
    public func testEOS_PlayerDataStorage_CopyFileMetadataByFilename_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_CopyFileMetadataByFilename = { Handle, CopyFileMetadataOptions, OutMetadata in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(CopyFileMetadataOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST)
                XCTAssertNil(CopyFileMetadataOptions!.pointee.LocalUserId)
                XCTAssertNil(CopyFileMetadataOptions!.pointee.Filename)
                XCTAssertNil(OutMetadata)
                TestGlobals.current.sdkReceived.append("EOS_PlayerDataStorage_CopyFileMetadataByFilename")
                return .zero
            }
            defer { __on_EOS_PlayerDataStorage_CopyFileMetadataByFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_PlayerDataStorage_FileMetadata? = try object.CopyFileMetadataByFilename(
                LocalUserId: nil,
                Filename: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataByFilename"])
            XCTAssertNil(result)
        }
    }
}
