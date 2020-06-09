import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:native_pdf_view/native_pdf_view.dart';


class CVScreen extends StatefulWidget {
  @override
  _CVScreenState createState() => _CVScreenState();
}

class _CVScreenState extends State<CVScreen> {
  int _actualPageNumber = 1, _allPagesCount = 0;
  PdfController _pdfController;

  @override
  void initState() {
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/pdf/resume.pdf'),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.black),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[500],
            elevation: 0,
            title: Text(
            "Resume",
              style: GoogleFonts.mcLaren(
              textStyle: Theme.of(context).textTheme.display1,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
        ),
        
        centerTitle: true,

            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.navigate_before),
                onPressed: () {
                  _pdfController.previousPage(
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 100),
                  );
                },
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  '$_actualPageNumber/$_allPagesCount',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  _pdfController.nextPage(
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 100),
                  );
                },
              ),
            ],
          ),
          body: PdfView(
            documentLoader: Center(child: CircularProgressIndicator()),
            pageLoader: Center(child: CircularProgressIndicator()),
            controller: _pdfController,
            onDocumentLoaded: (document) {
              setState(() {
                _allPagesCount = document.pagesCount;
              });
            },
            onPageChanged: (page) {
              setState(() {
                _actualPageNumber = page;
              });
            },
          ),
  
        ),
      );
}


