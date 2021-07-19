import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_TitleStorage_QueryFileListTests: XCTestCase {
    public func testEOS_TitleStorage_QueryFileList_Null() throws {
        TestGlobals.reset()
        __on_EOS_TitleStorage_QueryFileList = { Handle, Options, ClientData, CompletionCallback in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.ListOfTags)
            XCTAssertEqual(Options!.pointee.ListOfTagsCount, .zero)
            XCTAssertNil(ClientData)
            CompletionCallback?(nil)
            TestGlobals.sdkReceived.append("EOS_TitleStorage_QueryFileList") }
        let object: SwiftEOS_TitleStorage_Actor = SwiftEOS_TitleStorage_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.QueryFileList(
            LocalUserId: nil,
            ListOfTags: nil,
            CompletionCallback: { arg0 in
                XCTAssertEqual(arg0.ResultCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.FileCount, .zero)
                TestGlobals.swiftReceived.append("CompletionCallback") }
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_TitleStorage_QueryFileList"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["CompletionCallback"])
    }
}
