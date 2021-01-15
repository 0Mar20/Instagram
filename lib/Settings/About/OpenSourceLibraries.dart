import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class OpenSourceLibraries extends StatefulWidget {
  @override
  _OpenSourceLibrariesState createState() => _OpenSourceLibrariesState();
}

class _OpenSourceLibrariesState extends State<OpenSourceLibraries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9fbfc),
        centerTitle: false,
        title: Text(
          'Open Source Libraries',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Libraries We Use',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0f3057),
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:20),
              child: Text(
                'The following sets forth attribution notices for third party software that may be contained in portions of the Instagram product. '
                    'We thank the open source community for all of their contributions.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
            ),
            LibrariesInfo(
              header: 'ACRA',
              content: 'The following software may be included in this product: ACRA. This software contains the following license and notice below'
                  ':Application Crash Reporting for AndroidCopyright 2010 Emmanuel Astier & Kevin Gaudin This product includes software developed at ACRA (http://acra.googlecode.com/).Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License',
            ),
            LibrariesInfo(
              header: 'android-async-http',
              content: 'The following software may be included in this product: android-async-http. This software contains the following license and notice below:Android Asynchronous Http Client Copyright (c) 2011 James Smith <james@loopj.com> http://loopj.comLicensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License athttp://www.apache.org/licenses/LICENSE-2.0Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.',
            ),
            LibrariesInfo(
              header: 'Android Open Source Project',
              content: 'The following software may be included in this product: Android Open Source Project. This software contains the following license and notice below:=========================================================================NOTICE file corresponding to the section 4 d of the Apache License, Version 2.0, in this case for the Android-specific code.=========================================================================Android CodeCopyright 2005-2008 The Android Open Source ProjectThis product includes software developed as part of The Android Open Source Project (http://source.android.com).=========================================================================NOTICE file corresponding to the section 4 d of the Apache License, Version 2.0, in this case for Apache Commons code.=========================================================================Apache CommonsCopyright 1999-2004 The Apache Software FoundationThis product includes software developed atThe Apache Software Foundation (http://www.apache.org/).=========================================================================NOTICE file corresponding to the section 4 d of  == ==  the Apache License, Version 2.0, in this case for Jakarta Commons Logging.=========================================================================Jakarta Commons Logging (JCL)Copyright 2005,2006 The Apache Software Foundation.This product includes software developed atThe Apache Software Foundation (http://www.apache.org/).=========================================================================NOTICE file corresponding to the section 4 d of  == ==  the Apache License, Version 2.0, in this case for the Nuance code.=========================================================================These files are Copyright 2007 Nuance Communications, but released under the Apache2 License.=========================================================================NOTICE file corresponding to the section 4 d of  == ==  the Apache License, Version 2.0, in this case for the Media Codecs code.=========================================================================Media CodecsThese files are Copyright 1998 - 2009 PacketVideo, but released under the Apache2 License.=========================================================================NOTICE file corresponding to the section 4 d of the Apache License, Version 2.0, in this case for Additional Codecs code.=========================================================================Additional CodecsThese files are Copyright 2003-2010 VisualOn, but released under the Apache2 License.=========================================================================NOTICE file corresponding to the section 4 d of the Apache License, Version 2.0, in this case for the Audio Effects code.=========================================================================',
            ),
            LibrariesInfo(
              header: 'Apache Commons Codec',
              content: 'The following software may be included in this product: Apache HttpComponents Client. This software contains the following license and notice below:Apache HttpComponents ClientCopyright 1999-2012 The Apache Software FoundationThis product includes software developed by The Apache Software Foundation (http://www.apache.org/).Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.',
            ),
          ],
        ),
      ),
    );
  }
}

class LibrariesInfo extends StatelessWidget {
  LibrariesInfo({ @ required this.header, @required this.content});
  final String header ;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              header,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff0f3057),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            color: Colors.grey.withOpacity(.05),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                content,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
