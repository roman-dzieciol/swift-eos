import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_CopyFileMetadataAtIndexTests: XCTestCase {
    public func testEOS_TitleStorage_CopyFileMetadataAtIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_CopyFileMetadataAtIndex = { Handle, Options, OutMetadata in
                GTest.current.sdkReceived.append("EOS_TitleStorage_CopyFileMetadataAtIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_TITLESTORAGE_COPYFILEMETADATAATINDEXOPTIONS_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNotNil(OutMetadata)
                return .zero
            }
            defer { __on_EOS_TitleStorage_CopyFileMetadataAtIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyFileMetadataAtIndex(
                    LocalUserId: nil,
                    Index: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataAtIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataAtIndex"])
    }
}
