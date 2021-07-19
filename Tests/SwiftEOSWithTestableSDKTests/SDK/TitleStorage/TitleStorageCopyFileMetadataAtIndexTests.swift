import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_CopyFileMetadataAtIndexTests: XCTestCase {
    public func testEOS_TitleStorage_CopyFileMetadataAtIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_TitleStorage_CopyFileMetadataAtIndex = { Handle, Options, OutMetadata in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Index, .zero)
                XCTAssertNil(OutMetadata)
                TestGlobals.current.sdkReceived.append("EOS_TitleStorage_CopyFileMetadataAtIndex")
                return .zero
            }
            defer { __on_EOS_TitleStorage_CopyFileMetadataAtIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_TitleStorage_FileMetadata? = try object.CopyFileMetadataAtIndex(
                LocalUserId: nil,
                Index: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_TitleStorage_CopyFileMetadataAtIndex"])
            XCTAssertNil(result)
        }
    }
}
