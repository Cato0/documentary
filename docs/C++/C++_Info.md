---
id: C++
title: C++
sidebar_label: C++
---

# Table of Contents

- [Table of Contents](#table-of-contents)
- [Pointer](#pointer)
- [Vector](#vector)
		- [Doppel Vector](#doppel-vector)
- [Visual Studio](#visual-studio)
- [Conversions](#conversions)
- [Für den constructor](#f%C3%BCr-den-constructor)
- [Generelle Struktur](#generelle-struktur)
- [Qt](#qt)
- [CV](#cv)
- [Common Image](#common-image)
		- [CONVERT common::Image (PINs) to cv::Mat](#convert-commonimage-pins-to-cvmat)
		- [CONVERT cv::Mat to common::Image](#convert-cvmat-to-commonimage)
- [CONVERT from Image to Char](#convert-from-image-to-char)
- [CONVERT from Char to Image](#convert-from-char-to-image)

#	Pointer	#

	int variable;	// Wert der gespeichert wird
	int * pointer;	// Adresse

	variable.doSomething()
	pointer->doSomething()

	pointer  = Adresse
	*pointer = Wert

	&variable = Adresse
	variable  = Wert


	*pointer  == &variable
	*pointer == variable

	function (int* number) {

		
	}

=> ** == Wert // Pointer auf Pointer
=> 
#####################################################################################

- Value vs. Reference
- Call by Reference

*use pointer if you want to return the reference in a function		!!!!!

Call by Value



#####################################################################################

# Vector #

### Doppel Vector

	std::vector<std::vector<int>> confusionMatrix;	

	for (int i = 0; i < (confusionMatrix.size()); i++) {
		for (int j = 0; j < (confusionMatrix[0].size()); j++) {
			cout<<confusionMatrix[i][j]<<endl;
		}
	}

#####################################################################################

# Visual Studio	#

Release
+ schneller ??
- debugger kann damit nicht benutzt werden

Release with DebugInfo
- während der Testphase

- Beim wechseln ein neuer INSTALL (nicht ALL_BUILD)


#####################################################################################

# Conversions	#


Int to String

| std::to_string(number)

Int to String	

| ...

Int to String

| ...

Int to String

| ...

Int to String

| ...

#####################################################################################


#	Für den constructor	#
- können Parameter initialisiert werden
- nach normalen input Parametern und vor der {} Funktion

Code:

	TestPrivate () : m_a(0), m_b('B')
	{
	...
	}

-> d.h.

m_a = 0;

m_b = 'B';


#####################################################################################

#	Generelle Struktur	#

	namespace com {
		namespace nisys {
			namespace common {
				//header
				static unsigned int HEADER_LENGTH = 12;

				struct ReceiveStubPrivate {
				
				}
				
				void testFunction () {
				// ...
				}
				
			}
		}
	}

#####################################################################################

# Qt #

	connect(mp_gui->tableWidget, SIGNAL(cellClicked(int, int)), this, SLOT(onCellClicked(int, int)));

mp_gui ist das widget Element, auf dem z.B. button sind 

- SIGNAL kommt (meist) aus dem gui Element, kann man aber auch selber bauen
- SLOT immer selber definieren


#####################################################################################

# CV #

# Common Image

	common::Image image;

	cv::Vec3b newColor(0,0,0);
	newColor[0] = 200;
	newColor[1] = 200;
	newColor[2] = 200;
	cv::Mat image;

	for (int i = 0; i < noise_img.rows; i++) {
		for (int j = 0; j < noise_img.cols; j++) {

		cv::Vec3b c1 = mp_d->m_cvInputImage.at<cv::Vec3b>(cv::Point(i, j));
		if (c1[0] > 200 && c1[1] > 200 && c1[2] > 200) {
			mp_d->m_cvInputImage.at<cv::Vec3b>(cv::Point(i, j)) = newColor;
		}
		}
	}

### CONVERT common::Image (PINs) to cv::Mat	#

	common::ImageTools::reinitImage(*pinImage, m_outputImage);
	bool m_CvMatArraysCreated = createCVMatArrays(*pinImage, m_cvInputImage, m_cvOutputImage);
	m_cvInputImage.data = (unsigned char *)pinImage->pixelData();
	
- createCVMatArrays Funktion ist z.B. im Flip Plugin oder TCPInterfacePlugin


###	CONVERT cv::Mat to common::Image	#

	m_outputImage_2.setPixelData((unsigned char *)outImage_TCP.data);

	int width    = outImage_TCP.cols;
	int height   = outImage_TCP.rows;
	int channels = outImage_TCP.channels();

	m_outputImage_2.setSize(width, height);
	m_outputImage_2.setBytesPerPixel(channels);
	m_outputImage_2.setPixelType(RGB_PIXEL_TYPE_24BIT);

	m_outputImage_2.setPixelData((unsigned char *)outImage_TCP.data);

	m_outputImageDataWrapper.setData(&m_outputImage_2);
	mp_outputImagePin->setData(&m_outputImageDataWrapper);

#	CONVERT from Image to Char	#

	std::vector<int> param = std::vector<int>(2);
	param[0] = cv::IMWRITE_JPEG_QUALITY;
	param[1] = 100; //default(95) 0-100

	std::vector<uchar> buff;	//buffer for coding
	cv::imencode(".jpg", image, buff, param);

#	CONVERT from Char to Image	#

	std::vector<uchar> recv_buffer;//buffer for coding
	recv_buffer.resize(bufferSize);

	int s_1 = recv_buffer.size();
	std::string s = std::to_string(s_1);

	cv::Mat outImage_TCP = cv::imdecode( cv::Mat(recv_buffer) , cv::IMREAD_COLOR); // 1


#####################################################################################