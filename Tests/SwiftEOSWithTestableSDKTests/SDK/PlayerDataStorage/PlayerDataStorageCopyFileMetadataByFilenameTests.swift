import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_PlayerDataStorage_CopyFileMetadataByFilenameTests: XCTestCase {
    public func testEOS_PlayerDataStorage_CopyFileMetadataByFilename_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_PlayerDataStorage_CopyFileMetadataByFilename = { Handle, CopyFileMetadataOptions, OutMetadata in
                GTest.current.sdkReceived.append("EOS_PlayerDataStorage_CopyFileMetadataByFilename")
                XCTAssertNil(Handle)
                XCTAssertEqual(CopyFileMetadataOptions!.pointee.ApiVersion, EOS_PLAYERDATASTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST)
                XCTAssertNil(CopyFileMetadataOptions!.pointee.LocalUserId)
                XCTAssertNil(CopyFileMetadataOptions!.pointee.Filename)
                XCTAssertNotNil(OutMetadata)
                return .zero
            }
            defer { __on_EOS_PlayerDataStorage_CopyFileMetadataByFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_PlayerDataStorage_Actor = SwiftEOS_PlayerDataStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyFileMetadataByFilename(
                    LocalUserId: nil,
                    Filename: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataByFilename"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_PlayerDataStorage_CopyFileMetadataByFilename"])
    }
}
