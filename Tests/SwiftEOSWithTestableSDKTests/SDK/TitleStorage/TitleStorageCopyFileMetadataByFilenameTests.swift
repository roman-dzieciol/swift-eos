import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_TitleStorage_CopyFileMetadataByFilenameTests: XCTestCase {
    public func testEOS_TitleStorage_CopyFileMetadataByFilename_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_CopyFileMetadataByFilename = { Handle, Options, OutMetadata in
                GTest.current.sdkReceived.append("EOS_TitleStorage_CopyFileMetadataByFilename")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Filename)
                XCTAssertNotNil(OutMetadata)
                return .zero
            }
            defer { __on_EOS_TitleStorage_CopyFileMetadataByFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyFileMetadataByFilename(
                    LocalUserId: nil,
                    Filename: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataByFilename"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataByFilename"])
    }
}
