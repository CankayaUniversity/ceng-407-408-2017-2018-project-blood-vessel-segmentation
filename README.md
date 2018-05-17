# Emboli Detection System  
  
* Aykut ER - 201311018  
* Egeberk ÖZBERK - 201411045  
  
**Advisor : Assist. Prof. Dr. Roya CHOUPANI**  
  
This page contains information about the Project titled as “Emboli Detection System”. This system is an application developed to help the doctors to find emboli in the vessels easily.  
  
Emboli Detection System project is developed using Matlab to segment vessels and find emboli. Also, the GUI part of the system is developed in Visual Studio with C#.  
  
All of the documents about this project are available at:  
* https://github.com/CankayaUniversity/ceng-407-408-project-blood-vessel-segmentation/wiki
* https://aykut-er.github.io/
  
  
# **1. Compilation / Installation Guide**  
  
## **1.1. Prerequisites / Tools**  
  
* Visual Studio 2012 or higher should be installed on computer to compile and run the project.  

* Final version of the project is available at the link https://github.com/CankayaUniversity/ceng-407-408-project-blood-vessel-segmentation/releases/tag/v1.0.0 . It can be downloaded as a .zip file. Extract the files from .zip folder.  
  
## **1.2. Opening the Project in Visual Studio**  
  
* Open Visual Studio.
* When Visual Studio is opened, click Open Project and then choose the ProjectGUI folder from the downloaded project folder.
* After the project is opened in Visual Studio, as seen in Figure 1, click Start button
  
![](https://drive.google.com/uc?id=1W_TmkQOc9OnT22-LetiHVXkheo0Db8sy)  
**Figure 1 Visual Studio page to run the GUI**  
  
* After the Start button is clicked, then the program is built and run.  
  
## **1.3. Installation**  
  
* From the guide above, after the program is started, the GUI of the project can be used. 
* Another option to run the program, the project .zip folder is downloaded, then clicking the ProjectGUI.exe, as seen in Figure 2, in the folder and run the program.
  
![](https://drive.google.com/uc?id=1iCZHC4IaJzXoLKqwkUe6I7vNdGwNurMl)  
**Figure 2 .exe file to run the GUI**  
  
# **2. User Manual**  
  
## **2.1. General Briefing**  
  
BVS software aims to speed up the diagnosis process by quickly segmenting the vessels and detecting any emboli occurrences with more accuracy and faster than the actual doctor. Intended end user for this document and software is expected to be an ophthalmologist.  

Software does not require any internet connection nor have any hardware dependencies.  
  
## **2.2. Software Information**  
### **2.2.1. Overall Briefing**  
  
The software is composed of 4 interactive buttons for the end user handling certain operations and 6 distinct display areas.  
  
  Four of which are the image display zones;
* Original fundus image,
* Ground truth,
* Segmented blood vessels,
* Detected emboli occurrences.  
  
Remaining display areas are reserved for the results indicating software's performance or current state at any moment with errors encountered if ever exists and list of the images uploaded by the user.  

Buttons inside software's GUI has different purposes listed below;  
* Uploading An Image
* Segmentation Process
* Emboli Detection
* Save Results  
  
Functionalities of the components will be explained later in this document.  
  
### **2.2.2. Getting Started**  
#### **2.2.2.1. Uploading An Image**  
  
Button named "Upload Image" that resides upper left handles the upload operation.  

Pressing the button will trigger the file explorer enabling you to select a folder where all the retinal fundus images are stored.  

User must select between "Emboli” or "Segmentation" folder for different operations. Both folders can be found in the project folder.  

Emboli folder has only one photo due to lack of data. Segmentation folder however, has twenty photos with their ground truths.  
  
### **2.2.3. Operational Functionality**  
#### **2.2.3.1. Segmentation Process**  
  
Button named "Segmentation” residing at top section of the GUI handles the vessel segmentation.  

Outcome will be a binary image displaying at "Segmented Image" display zone (see addendum No: 1) and result bar indicating the accuracy of the operation or the error message regarding to addendum No: 1.  

Process of segmentation **_is necessary_** for the emboli detection operation in order to achieve higher accuracy and precision for the detection operation.  
  
**#Addendum:**  
1.	If there are no images loaded or selected, pressing segmentation button will generate an error message in result display area indicating the process requires an image to operate.  
  
#### **2.2.3.2. Emboli Detection**  
  
Button named "Emboli Detection” residing at top section of the GUI handles the emboli detection process, and will not appear if emboli folder isn't being selected.  

Pressing the button will display the processed version of the original image in emboli detection display area (see addendum No: 1). Process button will not appear until segmentation operation is performed.  

Finally result display area will display either a success message or an error message depending on the state of the software, along with the number of emboli occurrences.  
  
**#Addendum:**
1.	If there are no images loaded or selected, pressing segmentation button will generate an error message in result display area indicating the process requires an image to operate.  
  
### **2.2.4. Save Operation**  
  
Button named "Save Results” residing at the rightmost top section of the GUI saves the results and will not appear if no operation had been performed.  

Pressing the button will trigger the file explorer enabling user to chose where he/she wants to save (see addendum No: 1).  
For saving user must choose a folder for each of the result independently.   

Saving operation is handled successfully if the results display area pops a message indicating that the operation has been handles successfully.  
  
**#Addendum:**  
1.	If there has never been an operation, file explorer will not be triggered and an error message will be displayed in results display area.  
1.1.	If there has never been a emboli detection operation, detection results **_will not be included_** in results folder for saving.  
  
## **2.3. System Overview**  
1.	The software is based on the Windows 7, 8, 10 or variants.
2.	Performance is hardware dependent.
    -	Higher CPU speed or higher RAM capacity the better.
3.	Operational Status :
    -	Partially operational.
    -	Under development.

