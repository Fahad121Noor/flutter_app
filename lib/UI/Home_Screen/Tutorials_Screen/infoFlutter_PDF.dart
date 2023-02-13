import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../Core/AppColor.dart';
import '../../../Core/ImagePath.dart';
import '../../../Core/SizeBox.dart';
import '../../../Core/Text_Fonts.dart';

class Flutter_Info extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<Flutter_Info> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  OverlayEntry? _overlayEntry;
  // final GlobalKey _pdfViewerKey = GlobalKey();
  final PdfViewerController _pdfViewerController = PdfViewerController();
  void _showContextMenu(
      BuildContext context, PdfTextSelectionChangedDetails details) {
    final OverlayState _overlayState = Overlay.of(context)!;
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: details.globalSelectedRegion!.center.dy - 55,
        left: details.globalSelectedRegion!.bottomLeft.dx,
        child: ElevatedButton(
          onPressed: () {
            Clipboard.setData(ClipboardData(text: details.selectedText));
            _pdfViewerController.clearSelection();
            Fluttertoast.showToast(msg: 'Text Copied To Clipboard',
                timeInSecForIosWeb: 1,
                backgroundColor: AppColors.greenColor,
                textColor: AppColors.witheColor,
                fontSize: 18.sp
            );

          },
          child: Text('Copy', style: TextFonts.commonwitheText,),
          // elevation: 10,
        ),
      ),
    );
    _overlayState.insert(_overlayEntry!);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    Images.backGround,
                  ),
                  fit: BoxFit.cover,
                )),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.witheColor,
                        ),
                      ),
                      Text(
                        'Introduction to Flutter',
                        style: TextFonts.topText,
                      ),
                      fixwidth15
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: SfPdfViewer.asset(
                'assets/pdf_Fails/flutter_intro.pdf',
                canShowPaginationDialog: true,
                 key: _pdfViewerKey,
                onTextSelectionChanged:
                    (PdfTextSelectionChangedDetails details) {
                  if (details.selectedText == null && _overlayEntry != null) {
                    _overlayEntry!.remove();
                    _overlayEntry = null;
                  } else if (details.selectedText != null &&
                      _overlayEntry == null) {
                    _showContextMenu(context, details);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
