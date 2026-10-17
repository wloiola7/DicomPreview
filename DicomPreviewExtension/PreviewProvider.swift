import Cocoa
import Quartz

class PreviewProvider: QLPreviewProvider, QLPreviewingController {
    /*
     Use a QLPreviewProvider to provide data-based previews.
     */

     func providePreview(for request: QLFilePreviewRequest) async throws -> QLPreviewReply {
         let html = """
         <!DOCTYPE html>
         <html>
         <head><meta charset="utf-8"><title>DICOM Preview Disabled</title></head>
         <body><p>All DICOM preview functionality is currently disabled.</p></body>
         </html>
         """
         let data = Data(html.utf8)

         return QLPreviewReply(dataOfContentType: .html, contentSize: CGSize(width: 800, height: 200)) { _ in
             return data
         }
     }
}
