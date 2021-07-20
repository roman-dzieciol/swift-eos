import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_CopyFileMetadataByFilenameTests: XCTestCase {
    public func testEOS_TitleStorage_CopyFileMetadataByFilename_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_CopyFileMetadataByFilename = { Handle, Options, OutMetadata in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_COPYFILEMETADATABYFILENAMEOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.Filename)
                XCTAssertNotNil(OutMetadata)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorage_CopyFileMetadataByFilename")
                return .zero
            }
            defer { __on_EOS_TitleStorage_CopyFileMetadataByFilename = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_TitleStorage_FileMetadata? = try object.CopyFileMetadataByFilename(
                LocalUserId: nil,
                Filename: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataByFilename"])
            XCTAssertNil(result)
        }
    }
}
